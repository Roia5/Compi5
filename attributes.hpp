#ifndef ATTRIBUTES
#define ATTRIBUTES

#include <vector>
#include <string>
#include "output.hpp"
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <sstream>

using namespace std;
using namespace output;

//TODO: too many functions and data sets,
//convert to a class and add init functionallity
//in constructor.
enum EntryKind { Var, Array, Func };
enum SymbolTableTypes { typeInt, typeByte, typeBool, typeVoid, typeString, TYPES_SIZE };
//string SymbolTableAliases[TYPES_SIZE];

#define FUNCS_OFFSET 0
#define ARR_MIN_SIZE 1
#define ARR_MAX_SIZE 255

class VarType {
	protected:
		string vType;
		string name;
		vector<EntryKind> entryKinds;
		vector<string> argNames;
		bool isNamed;
		int intVal;
		bool boolVal;
		string reg;
		string op;
		vector<string> registerList;
	public:
		VarType() {}
		VarType(string varType, string name) : vType(varType), name(name), isNamed(true) {}
		VarType(string varType, string name, int value) : vType(varType), name(name), intVal(value), isNamed(true) {}
		VarType(string varType, string name, string op) : vType(varType), name(name), op(op) {}
		VarType(string varType, string name, bool value) : vType(varType), name(name), boolVal(value), isNamed(true) {}
	void setBoolVal(bool value){
		this->boolVal = value;
	}
	bool getBoolVal(){
		return this->boolVal;
	}
	void addRegisterToList(string reg){
		registerList.push_back(reg);
	}
	vector<string> getRegisterList(){
		return this->registerList;
	}
	void setRegister(string reg){
		this->reg = reg;
	}
	string getRegister(){
		return this->reg;
	}
	void addArgName(string name){
		argNames.push_back(name);
	}
	string getOp(){
		return this->op;
	}
	void setIntVal(int value){
		this->intVal = value;
	}
	int getIntVal(){
		return this->intVal;
	}
	bool getIsNamed(){
		return this->isNamed;
	}
	void setIsNamed(){
		this->isNamed = true;
	}
	vector<string> getArgNames(){
		return this->argNames;
	}
	void setArgNames(vector<string> vec){
		this->argNames = vec;
	}
	void setType(string new_type){
		this->vType = new_type;
	}
	string getType(){
		return this->vType;
	}
	string getName(){
		return this->name;
	}
	void setName(string new_name) {
		name = new_name;
		isNamed = true;
	}
	void addEntryKind(EntryKind kind){
		entryKinds.push_back(kind);
	}
	vector<EntryKind> getEntryKinds(){
		return this->entryKinds;
	}
	void setEntryKinds(vector<EntryKind> vec){
		this->entryKinds = vec;
	}
	virtual ~VarType() {}
};

class NumType : public VarType {
	protected:
		int value;
	public:
		NumType(string varType, string name, int value) : VarType(varType,name) , value(value){}
		int getValue(){
			return this->value;
		}
};


//Table Entry - var, array or a function
class TEntry : public VarType{
	protected:
		int idOffset;
		EntryKind kind;
		int arrSize;
		vector<TEntry> funcArgs;
	public:
		TEntry() {}
		TEntry(string Name, string Type) : VarType(Type,Name) {}
		TEntry(string Name, string Type, int Offset) : VarType(Type,Name), idOffset(Offset), kind(Var), arrSize(1) {} //var
		TEntry(string Name, string Type, int Size, int Offset) : VarType(Type,Name), idOffset(Offset), kind(Array), arrSize(Size) {} //array
		TEntry(string Name, string RetType, vector<TEntry> FuncArgs) : VarType(RetType,Name), kind(Func), funcArgs(FuncArgs) {} //function TBD: what to do with offset

		void setOffset(int offset) {
			idOffset = offset;
		}
		
		int getOffset() {
			return idOffset;
		}
		
		EntryKind getKind() {
			return kind;
		}

		void setKind(EntryKind kind){
			this->kind = kind;
		}
		
		int getArrSize() {
			return arrSize;
		}

		void setArrSize(int size){
			this->arrSize = size;
		}
		
		vector<TEntry> getFuncArgs() {
			return this->funcArgs;
		}
};

int __init_stacks();

int __destroy_stacks();

int InsertVar(string Name, string Type, VarType* t);

vector<string> getArgsTypes(TEntry);

void PrintTopStack();

int InsertArray(string Name, string Type, int Size);

int InsertFunction(string Name, string type, vector<EntryKind> vecKinds, vector<string> vecNames);

int InsertFunction(string Name, string RetType, vector<TEntry> Args); 

int StartScope();

void ExitScope();

void PopStacks();

void PopAllStacks();

bool isIdentifierExists(string);

TEntry* findByID(string);

string getCurrentFunctionType();

bool parameterFits(TEntry, string);

bool allParametersFit(vector<TEntry>, vector<string>);

vector<string> splitType(string type);

bool doesFunctionExist(string, string);

string numberToString(int);

int emit(string msg);
#ifndef YYSTYPE
#define YYSTYPE VarType*
#endif

#endif