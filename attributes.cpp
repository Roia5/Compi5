#include "attributes.hpp"
#include "bp.hpp"
vector <vector<TEntry> > tables_stack;
vector <int> offsets_stack;

int printi = 0;
extern int yylineno;
string SymbolTableAliases[TYPES_SIZE]; //TBD: ask roey if he needs aliases in parser/scanner, and if so move to hpp

int __init_stacks() {
	vector<TEntry> newVec;
	tables_stack.push_back(newVec);
	offsets_stack.push_back(0);
	
	SymbolTableAliases[typeInt] = "INT";
	SymbolTableAliases[typeByte] = "BYTE";
	SymbolTableAliases[typeBool] = "BOOL";
	SymbolTableAliases[typeVoid] = "VOID";
	SymbolTableAliases[typeString] = "STRING";
	
	//add print declaration to stack
	TEntry e("string_format", SymbolTableAliases[typeString], offsets_stack.back());
	vector<TEntry> newVec2;
	newVec2.push_back(e);
	InsertFunction("print", SymbolTableAliases[typeVoid], newVec2);
	PopStacks(); //exit scope without printing
	
	//add printi int declaration to stack
	TEntry e2("string_format", SymbolTableAliases[typeInt], offsets_stack.back());
	vector<TEntry> newVec3;
	newVec3.push_back(e2);
	InsertFunction("printi", SymbolTableAliases[typeVoid], newVec3);
	PopStacks(); //exit scope without printing
	
	//add printi byte declaration to stack
	/*TEntry e3("string_format", SymbolTableAliases[typeByte], offsets_stack.back());
	vector<TEntry> newVec4;
	newVec4.push_back(e3);
	InsertFunction("printi", SymbolTableAliases[typeVoid], newVec4);
	PopStacks(); //exit scope without printing*/
}

vector<string> getArgsTypes(TEntry Func) {
	vector<string> types;
	vector<TEntry> vec = Func.getFuncArgs();
	for (int i = 0; i < Func.getFuncArgs().size(); i++){
		if(vec[i].getKind() == Array){
			types.push_back(vec[i].getType() + "[" + numberToString(vec[i].getArrSize()) + "]");
		}
		else {
			types.push_back(vec[i].getType());
		}
	}
	return types;
}

int __destroy_stacks() {
	TEntry* main = findByID("main");
	if (!main || main->getType().compare(SymbolTableAliases[typeVoid]) != 0 || main->getFuncArgs().size() > 0 || main->getKind() != Func) { //type check
		errorMainMissing();
		PopStacks();
		exit(0);
	}
	
	ExitScope(); //exit general scope
}

/*void PrintTopStack() {
	for (int i = 0; i < tables_stack.back().size(); i++) {
		TEntry curr_entry = tables_stack.back()[i];
		if (curr_entry.getKind() == Var)
			printID(curr_entry.getName(), curr_entry.getOffset(), curr_entry.getType());
		
		if (curr_entry.getKind() == Array)
			cout << curr_entry.getName() << " " << makeArrayType(curr_entry.getType(), curr_entry.getArrSize()) << " " << curr_entry.getOffset() << "\n";;
		
		if (curr_entry.getKind() == Func) {
			vector<string> args_types = getArgsTypes(curr_entry);
			cout << curr_entry.getName() << " " <<  makeFunctionType(curr_entry.getType(), args_types) << " " << FUNCS_OFFSET << "\n";
		}
	}
}*/

int InsertVar(string Name, string Type, VarType* t) {
	if (isIdentifierExists(Name)) {
		errorDef(yylineno, Name);
		PopAllStacks();
		exit(0);
	}
	
	int curr_off = offsets_stack.back();
	tables_stack.back().push_back(TEntry(Name, Type, curr_off));
	offsets_stack.pop_back();
	offsets_stack.push_back(curr_off + 1);
	return 0;
}

int InsertArray(string Name, string Type, int Size) {
	if (Size < ARR_MIN_SIZE || Size > ARR_MAX_SIZE) {
		errorInvalidArraySize(yylineno, Name);
		PopAllStacks();
		exit(0);
	}
	
	if (isIdentifierExists(Name)) {
		errorDef(yylineno, Name);
		PopAllStacks();
		exit(0);
	}
	
	int curr_off = offsets_stack.back();
	TEntry e(Name, Type, Size, curr_off);
	tables_stack.back().push_back(e);
	offsets_stack.pop_back();
	offsets_stack.push_back(curr_off + Size);
	return 0;
}
void parser_helper() {
	for (int i = tables_stack.size()-1; i >= 0; i--)
		for (int j = tables_stack[i].size()-1; j >= 0; j--)
			cout << "ID:" << tables_stack[i][j].getName() << ", Type: " << tables_stack[i][j].getType() << endl;
}
int InsertFunction(string Name, string type, vector<EntryKind> vecKinds, vector<string> vecNames){
	size_t position = type.find("_");
	string retValue = type.substr(0, position); 
	vector<string> types = splitType(type);
	vector<TEntry> vecEntries;
	for(int i=0;i<vecKinds.size();i++){
		TEntry e;
		e.setKind(vecKinds[i]);
		size_t position2 = types[i].find("[");
		if (position2 != std::string::npos) {
			e.setType(types[i].substr(0,position2));
			e.setArrSize(atoi(types[i].substr(position2+1,types[i].length()-position2-2).c_str()));
		}
		else {
			e.setType(types[i]);
		}
		e.setName(vecNames[i]);
		vecEntries.push_back(e);
	}
	return InsertFunction(Name, retValue, vecEntries);
}
int InsertFunction(string Name, string RetType, vector<TEntry> Args) {
	if (Name.compare("printi") == 0) {
		if (printi >= 2) {
			errorDef(yylineno, Name);
			PopAllStacks();
			exit(0);
		}
		printi++;
	}
		
	if (isIdentifierExists(Name) && Name.compare("printi") != 0) {
		errorDef(yylineno, Name);
		PopAllStacks();
		exit(0);
	}
		
	vector<TEntry> arguments(Args);
		
	int init_offset = offsets_stack.back();
	int args_offset = init_offset;
		
	for (int i = 0; i < arguments.size(); i++) {
		if (arguments[i].getKind() == Var)
			arguments[i].setOffset(--args_offset);
		else
			if (arguments[i].getKind() == Array) {
				args_offset -= arguments[i].getArrSize();
				arguments[i].setOffset(args_offset);
			}
	}
		
	tables_stack.back().push_back(TEntry(Name, RetType, arguments, Name));
	
	StartScope();
	//insert arguments to stack
	for (int i = 0; i < arguments.size(); i++) {
		if (isIdentifierExists(arguments[i].getName())) {
			errorDef(yylineno, arguments[i].getName());
			PopAllStacks();
			exit(0);
		}
		
		tables_stack.back().push_back(arguments[i]);
	}
	
	//return without updating offset stack
	return 0;
}

int StartScope() {
	vector<TEntry> newVec;
	tables_stack.push_back(newVec);
	offsets_stack.push_back(offsets_stack.back());
	return 0;
}

void ExitScope() {
	//endScope();
	//PrintTopStack();
	PopStacks();
}

void PopStacks() {
	tables_stack.pop_back();
	offsets_stack.pop_back();
}

void PopAllStacks() {
	int tsSize = tables_stack.size(), osSize = offsets_stack.size();
	for (int i = 0; i < tsSize; i++)
		tables_stack.pop_back();
	for (int i = 0; i < osSize; i++)
		offsets_stack.pop_back();
}

string getCurrentFunctionType() {
	for (int i = tables_stack.size()-1; i >= 0; i--)
		for (int j = tables_stack[i].size()-1; j >= 0; j--)
			if (tables_stack[i][j].getKind() == Func){
				string type = tables_stack[i][j].getType();
				size_t position = type.find("_");
				return type.substr(0,position);
			}
	
	errorMismatch(yylineno);
	PopAllStacks();
	exit(0);
}

bool parameterFits(TEntry entry, string callType){
	if (entry.getKind() == Array){
		return ((entry.getType() + "[" + numberToString(entry.getArrSize()) + "]") == callType);
	}
	string parameterType = entry.getType();
	return ((parameterType == callType) || (parameterType == SymbolTableAliases[typeInt] && callType == SymbolTableAliases[typeByte])); //type check
}

bool allParametersFit(vector<TEntry> funcEntry, vector<string> callEntry) {
	if (funcEntry.size() != callEntry.size())
		return false;
	
	for (int i = 0; i < funcEntry.size(); i++)
		if (!parameterFits(funcEntry[i],callEntry[i]))
			return false;
		
	return true;
}

bool isIdentifierExists(string ID) {
		//cout << "looking for id " << ID << endl;
		//parser_helper();
	if (!findByID(ID))
		return false;
	return true;
}

vector<string> splitType(string type){
	size_t position = type.find("_");
	if (position == std::string::npos) {
		//throw error
		exit(0);
	}
	vector<string> types;
	if(position == type.length() - 1){
		return types;
	}
	type = type.substr(position + 1, type.length() - position - 1); //get rid of the return value

	//cout << type << endl;
	string delimiter = ",";
	position = 0;
	std::string token;
	if((position = type.find(delimiter)) == std::string::npos){
		token = type;
	}
	while ((position = type.find(delimiter)) != std::string::npos) {
		token = type.substr(0, position);
		types.push_back(token);
		type.erase(0, position + delimiter.length());
	}
	types.push_back(type);
	//cout << type << endl;
	//tokens now reside in types vector
	return types;
}
string getFunctionLabel(string name){
	TEntry* t = findByID(name);
	return "_" + t->getLabel() + "_";
}
bool doesFunctionExist(string name, string type){
	//string pattern: retValue_type1,type2,...
		//cout << "doesFunctionExist with- " << name << " " << type << endl;
		//parser_helper();
	
	vector<string> types = splitType(type);
	for (int j = tables_stack[0].size() - 1; j >= 0; j--) { //function are in the 0th table on the stack
		TEntry entry = tables_stack[0][j];
		if ((entry.getKind() == Func) && (entry.getName() == name)) {
			vector<TEntry> currentParameters = entry.getFuncArgs();
			if (allParametersFit(currentParameters, types)) {
				return true;
			}
		}
	}

	return false;
}

TEntry* findByID(string name) {
	for (int i = tables_stack.size()-1; i >= 0; i--)
		for (int j = tables_stack[i].size()-1; j >= 0; j--)
			if (name.compare(tables_stack[i][j].getName()) == 0)
    			return &tables_stack[i][j];
			
	return NULL;
}

string numberToString(int number) {
	string result;
	stringstream convert; 
	convert << number;
	result = convert.str();
	return result;
}

int emit(string msg){
	CodeBuffer::instance().emit(msg);
}

vector<int> makelist(int item){
	return CodeBuffer::instance().makelist(item);
}