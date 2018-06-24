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
enum stETypes { typeInt, typeByte, typeBool, typeVoid, typeString, TYPES_SIZE };
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
		string stringVal;
		string stringLabel;
		string reg;
		string op;
		vector<string> registerList;
		vector<int> trueList;
		vector<int> falseList;
		vector<int> nextList;
	public:
		VarType() {}
		VarType(string varType, string name) : vType(varType), name(name), isNamed(true) {}
		VarType(string varType, string name, int value) : vType(varType), name(name), intVal(value), isNamed(true) {}
		VarType(string varType, string name, bool value) : vType(varType), name(name), boolVal(value), isNamed(true) {}
		
	void setBoolVal(bool value);
	
	void setTrueList(vector<int> trueList);
	
	void setStringVal(string val);
	
	void setStringLabel(string label);
	
	string getStringLabel();
	
	string getStringVal();
	
	void setNextList(vector<int> nextList);
	
	vector<int> getNextList();
	
	vector<int> getTrueList();
	
	void setFalseList(vector<int> falseList);
	
	vector<int> getFalseList();
	
	void setOp(string op);
	
	bool getBoolVal();
	
	void addRegisterToList(string reg);
	
	vector<string> getRegisterList();
	
	void setRegister(string reg);
	
	string getRegister();
	
	void addArgName(string name);
	
	string getOp();
	
	void setIntVal(int value);
	
	int getIntVal();
	
	bool getIsNamed();
	
	void setIsNamed();
	
	vector<string> getArgNames();
	
	void setArgNames(vector<string> vec);
	
	void setType(string new_type);
	
	string getType();
	
	string getName();
	
	void setName(string new_name);
	
	void addEntryKind(EntryKind kind);
	
	vector<EntryKind> getEntryKinds();
	
	void setEntryKinds(vector<EntryKind> vec);
	
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
		string label;
		int idOffset;
		EntryKind kind;
		int arrSize;
		vector<TEntry> funcArgs;
	public:
		TEntry() {}
		TEntry(string Name, string Type) : VarType(Type,Name) {}
		TEntry(string Name, string Type, int Offset) : VarType(Type,Name), idOffset(Offset), kind(Var), arrSize(1) {} //var
		TEntry(string Name, string Type, int Size, int Offset) : VarType(Type,Name), idOffset(Offset), kind(Array), arrSize(Size) {} //array
		TEntry(string Name, string RetType, vector<TEntry> FuncArgs, string label) : VarType(RetType,Name), label(label), 
									kind(Func), funcArgs(FuncArgs) {} //function TBD: what to do with offset

		string getLabel();
		
		void setOffset(int offset);
		
		int getOffset();
		
		EntryKind getKind();

		void setKind(EntryKind kind);
		
		int getArrSize();

		void setArrSize(int size);
		
		vector<TEntry> getFuncArgs();
};

int __init_stacks();

int __destroy_stacks();

int InsertVar(string Name, string Type, VarType* t);

vector<string> getArgsTypes(TEntry);

//void PrintTopStack();

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

string getFunctionLabel(string name);

bool allParametersFit(vector<TEntry>, vector<string>);

vector<string> splitType(string type);

bool doesFunctionExist(string, string);

string numberToString(int);

int emit(string msg);

vector<int> makelist(int item);

vector<int> merge(const vector<int> &l1,const vector<int> &l2);

#ifndef YYSTYPE
#define YYSTYPE VarType*
#endif

#endif