#include "attributes.hpp"
#include "bp.hpp"

vector <vector<TEntry> > tables_stack;
vector <int> offsets_stack;
int prevScopeSize;
int printi = 0;
extern int yylineno;
string stTypes[TYPES_SIZE]; //TBD: ask roey if he needs aliases in parser/scanner, and if so move to hpp

int __init_stacks() {
	vector<TEntry> newVec;
	tables_stack.push_back(newVec);
	offsets_stack.push_back(0);
	
	stTypes[typeInt] = "INT";
	stTypes[typeByte] = "BYTE";
	stTypes[typeBool] = "BOOL";
	stTypes[typeVoid] = "VOID";
	stTypes[typeString] = "STRING";
	
	//add print declaration to stack
	TEntry e("string_format", stTypes[typeString], offsets_stack.back());
	vector<TEntry> newVec2;
	newVec2.push_back(e);
	InsertFunction("print", stTypes[typeVoid], newVec2);
	PopStacks(); //exit scope without printing
	
	//add printi int declaration to stack
	TEntry e2("string_format", stTypes[typeInt], offsets_stack.back());
	vector<TEntry> newVec3;
	newVec3.push_back(e2);
	InsertFunction("printi", stTypes[typeVoid], newVec3);
	PopStacks(); //exit scope without printing
	
	//add printi byte declaration to stack
	/*TEntry e3("string_format", stTypes[typeByte], offsets_stack.back());
	vector<TEntry> newVec4;
	newVec4.push_back(e3);
	InsertFunction("printi", stTypes[typeVoid], newVec4);
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
	if (!main || main->getType().compare(stTypes[typeVoid]) != 0 || main->getFuncArgs().size() > 0 || main->getKind() != Func) { //type check
		errorMainMissing();
		PopStacks();
		exit(0);
	}
	
	ExitScope(); //exit general scope
}

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

int getPreviousScopeSize(){
	return prevScopeSize;
}
int getCurrentScopeSize(){
	vector<TEntry> currentScope = tables_stack.back();
	int count = 0;
	for(int i=0;i<currentScope.size();i++){
		if(currentScope[i].getKind()==Var && currentScope[i].getOffset()>=0){
			count++;
		}
		else if(currentScope[i].getKind()==Array && currentScope[i].getOffset()>=0){
			count+=currentScope[i].getArrSize();
		}
		else {

		}
	}
	return count;
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

int getNumOfScopes(){
	return tables_stack.size();
}
void PrintTopStack() {
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
}
void ExitScope() {
	//endScope();
	//PrintTopStack();
	prevScopeSize = getCurrentScopeSize();
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
	return ((parameterType == callType) || (parameterType == stTypes[typeInt] && callType == stTypes[typeByte])); //type check
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

vector<int> merge(const vector<int> &l1,const vector<int> &l2){
	bool same = false;
	if(l1.size()==l2.size()){
		same = true;
		for(int i=0;i<l1.size();i++){
			if(l1[i]!=l2[i]){
				same = false;
				break;
			}
		}
	}
	if(same) return l1;
	return CodeBuffer::instance().merge(l1,l2);
}

////////////////////////////////////////////VarType////////////////////////////////////////////
void VarType::setBoolVal(bool value){
	this->boolVal = value;
}

void VarType::setTrueList(vector<int> trueList){
	this->trueList = trueList;
}

void VarType::setStringVal(string val){
	this->stringVal = val;
}

void VarType::setStringLabel(string label){
	this->stringLabel = label;
}

string VarType::getStringLabel(){
	return this->stringLabel;
}

string VarType::getStringVal(){
	return this->stringVal;
}

void VarType::setNextList(vector<int> nextList){
	if(nextList.size()!=0){
		this->nextList = nextList;
	}
	//maybe else
}

vector<int> VarType::getNextList(){
	return this->nextList;
}


vector<int> VarType::getTrueList(){
	return this->trueList;
}

void VarType::setFalseList(vector<int> falseList){
	this->falseList = falseList;
}

vector<int> VarType::getFalseList(){
	return this->falseList;
}

void VarType::setOp(string op){
	this->op = op;
}

bool VarType::getBoolVal(){
	return this->boolVal;
}

void VarType::addArrayArg(ArrayType t){
	if(t.size == 0) return;
	this->arrayArgs.push_back(t);
}

vector<ArrayType> VarType::getArrayArgs(){
	return this->arrayArgs;
}
int VarType::getArrOffset(){
	return this->arrOffset;
}
int VarType::getArrSize(){
	return this->arrSize;
}
void VarType::setArrOffset(int arrOffset){
	this->arrOffset = arrOffset;
}
void VarType::setArrSize(int arrSize){
	this->arrSize = arrSize;
}
void VarType::addRegisterToList(string reg){
	registerList.push_back(reg);
}

vector<string> VarType::getRegisterList(){
	return this->registerList;
}

void VarType::setRegister(string reg){
	this->reg = reg;
}

string VarType::getRegister(){
	return this->reg;
}

void VarType::addArgName(string name){
	argNames.push_back(name);
}

string VarType::getOp(){
	return this->op;
}

void VarType::setWhileList(vector<int> whileList){
	if(whileList.size()!=0){
		this->whileList = whileList;
	}
}

vector<int> VarType::getWhileList(){
	return this->whileList;
}
	
void VarType::setIntVal(int value){
	this->intVal = value;
}

void VarType::setCurly(bool val){
	this->isCurly = val;
}
bool VarType::getCurly(){
	return this->isCurly;
}
int VarType::getIntVal(){
	return this->intVal;
}

bool VarType::getIsNamed(){
	return this->isNamed;
}

void VarType::setIsNamed(){
	this->isNamed = true;
}

vector<string> VarType::getArgNames(){
	return this->argNames;
}

void VarType::setArgNames(vector<string> vec){
	this->argNames = vec;
}

void VarType::setType(string new_type){
	this->vType = new_type;
}

string VarType::getType() {
	return this->vType;
}

string VarType::getName(){
	return this->name;
}

void VarType::setName(string new_name) {
	name = new_name;
	isNamed = true;
}

void VarType::addEntryKind(EntryKind kind){
	entryKinds.push_back(kind);
}

vector<EntryKind> VarType::getEntryKinds(){
	return this->entryKinds;
}

void VarType::setEntryKinds(vector<EntryKind> vec){
	this->entryKinds = vec;
}

////////////////////////////////////////////TEntry////////////////////////////////////////////
string TEntry::getLabel() {
	return this->label;
}
void TEntry::setOffset(int offset) {
	idOffset = offset;
}

int TEntry::getOffset() {
	return idOffset;
}

EntryKind TEntry::getKind() {
	return kind;
}

void TEntry::setKind(EntryKind kind){
	this->kind = kind;
}

int TEntry::getArrSize() {
	return arrSize;
}

void TEntry::setArrSize(int size){
	this->arrSize = size;
}

vector<TEntry> TEntry::getFuncArgs() {
	return this->funcArgs;
}