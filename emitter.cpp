#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <sstream>
#include "bp.hpp"
#include "attributes.hpp"
#include "registers.cpp"

using namespace std;
#define STACK_ENTRY_SIZE 4

class emitter {
	private:
		RegisterHandler rh;
		string endMainLabel;
		int action3op(string act, string rdest, string rsrc, string src) {
			return emit(act + " " + rdest + ", " + rsrc + ", " + src);
		}
		
		int condjump(string cond, string rsrc, string src) {
			return emit(cond + " " + rsrc + ", " + src + ", ");
		}
		
		int jump(string jorjal, string label) {
			return emit(jorjal + " " + label);
		}

		string parent_reg(const string reg) {
			return "(" + reg + ")";
		}
	public:
		emitter(RegisterHandler& rh) : rh(rh) {}
		void onFunctionCall(string name, vector<string> argumentRegs){	//saving all used registers by caller, $fp, $ra, argument registers, then resets pool.
			//vector<string> usedRegVec = rh.getUsedRegisters();
			/*for(int i=0;i<usedRegVec.size();i++){
				pushRegister(usedRegVec[i]);
			}*/
			for (int i = 0; i < NUM_REGS; i++) {
				pushRegister(regIndexToName(i));
			}
			pushRegister(fp_reg);
			pushRegister(ra_reg);
			for(int i = 0; i < argumentRegs.size(); i++){
				pushRegister(argumentRegs[i]);
			}
			//rh.resetPool();
			string real_name = "_" + name + "_";
			jal(real_name);
		}
		void onFunctionReturn(vector<string> argumentRegs){
			for(int i=0;i<argumentRegs.size();i++){
				popRegister(argumentRegs[i]);
			}
			popRegister(ra_reg);
			popRegister(fp_reg);
			for(int i = NUM_REGS - 1; i >= 0; i--){
				popRegister(regIndexToName(i));
			}

		}
		string getEndMainLabel(){
			return endMainLabel;
		}
		int buildMain(){
			emit("");
			emit(".globl main");
			emit(".ent  main");
			emit("main:");
			emit("");
			mov(fp_reg,sp_reg);
			//pushRegister("$fp");
			//pushRegister("$ra");
			int ret = emit ("jal ");
			//popRegister("$ra");
			//popRegister(fp_reg);
			endMainLabel = CodeBuffer::instance().genLabel();
			emit("li $v0,10"); //terminate program
			emit("syscall");
			emit(".end main");
			emit("");
			return ret;
		}
		void pushRegister(string reg){
			sub(sp_reg,sp_reg, numberToString(STACK_ENTRY_SIZE));
			sw(reg, parent_reg(sp_reg));
		}
		void popRegister(string reg){
			lw(reg, parent_reg(sp_reg));
			add(sp_reg,sp_reg, numberToString(STACK_ENTRY_SIZE));
		}
		
		void initArray(string reg, int length){
			sub(sp_reg,sp_reg,numberToString(length*STACK_ENTRY_SIZE));
			sw(reg, parent_reg(sp_reg));
			for(int i=1;i<length;i++){
				sw(reg,numberToString(i*STACK_ENTRY_SIZE) + parent_reg(sp_reg));
			}
		}
		
		void loadVariable(string rdest, int offset){
			int real_offset = (-1)*STACK_ENTRY_SIZE*offset;
			lw(rdest,numberToString(real_offset) + parent_reg(fp_reg));
		}
		void storeVariable(string rsrc, int offset){
			int real_offset = (-1)*STACK_ENTRY_SIZE*offset;
			sw(rsrc,numberToString(real_offset) + parent_reg(fp_reg));
		}
		void zeroTopBits(string reg){
			emit("sll " + reg + ", " + reg + ", 24");	//shift left 24 bits
			emit("srl " + reg + ", " + reg + ", 24");	//shift right 24 bits
		}
		//load address to register
		int la(string rdest, string address) {
			return emit("la " + rdest + ", " + address);
		}
		
		//load immediate to register
		int li(string rdest, string im) {
			return emit("li " + rdest + ", " + im);
		}
		
		//load word at adress to register
		int lw(string rdest, string address) {
			return emit("lw " + rdest + ", " + address);
		}
		
		//store word from register to address
		int sw(string rsrc, string address) {
			return emit("sw " + rsrc + ", " + address);
		}
		
		//add src to rsrc and save to rdest
		int add(string rdest, string rsrc, string src) {
			return action3op("addu", rdest, rsrc, src);
		}
		
		//sub src from rsrc and save to rdest
		int sub(string rdest, string rsrc, string src) {
			return action3op("subu", rdest, rsrc, src);
		}
		
		//multiply rsrc and src and save to rdest
		int mul(string rdest, string rsrc, string src) {
			return action3op("mul", rdest, rsrc, src);
		}
		
		//divide rsrc by src and save to rdest
		int div(string rdest, string rsrc, string src) {
			emit("beq " + src + ", 0, labelZeroDiv");
			return action3op("div", rdest, rsrc, src);
		}
		
		//copy contect of source register to destination register
		int mov(string rdest, string rsrc) {
			return emit("move " + rdest + ", " + rsrc);
		}
		
		//
		int beq(string rsrc, string src) {
			return condjump("beq", rsrc, src);
		}
		
		//
		int bne(string rsrc, string src) {
			return condjump("bne", rsrc, src);
		}
		
		//
		int blt(string rsrc, string src) {
			return condjump("blt", rsrc, src);
		}
		
		//
		int ble(string rsrc, string src) {
			return condjump("ble", rsrc, src);
		}
		
		//
		int bgt(string rsrc, string src) {
			return condjump("bgt", rsrc, src);
		}
		
		//
		int bge(string rsrc, string src) {
			return condjump("bge", rsrc, src);
		}
		
		//jump to label
		int jmp(string label) {
			return jump("j", label);
		}
		
		int gotoEmpty(){
			return emit("j ");
		}
		//jump to label and save pre-jump address to ra register
		int jal(string label) {
			return jump("jal", label);
		}

		//return from func and restore ra register
		int jr(){
			return emit("jr " + ra_reg);
		}
		
		//no operation
		int nop() {
			return emit("nop");
		}
		
		void funcStart(string name) {
			string real_name = "_" + name + "_";
			emit("");
			emit(".globl " + real_name);
			emit(".ent  " + real_name);
			emit(real_name + ":");
			emit("");
        	mov(fp_reg, sp_reg);
        	sub(fp_reg,fp_reg,numberToString(STACK_ENTRY_SIZE));
		}

		void funcEnd(string name){
			string real_name = "_" + name + "_";
			jr();
			emit(".end " + real_name);
			emit("");
		}

		int ifInstruction(string reg1, string reg2, string op){
			int bufferLine;
			if(op == "<"){
				bufferLine = blt(reg1,reg2);
			} else if(op==">"){
				bufferLine = bgt(reg1,reg2);
			} else if(op=="<="){
				bufferLine = ble(reg1,reg2);
			} else if(op==">="){
				bufferLine = bge(reg1,reg2);
			} else if(op=="=="){
				bufferLine = beq(reg1,reg2);
			} else if(op=="!="){
				bufferLine = bne(reg1,reg2);
			} else {
				cout << "operation error ifInstruction, op is " << op << endl;
			}
			return bufferLine;
		}
		
		int arrayIsInRange(string arr_size, string idx_reg) {
			emit("bge " + idx_reg + ", " + arr_size + ", labelOutOfRange");
			return emit("blt " + idx_reg + ", 0, labelOutOfRange");
		}
		
		void arrayCopy(TEntry* dest, TEntry* src) {
			if (dest->getType() != src->getType())
				return; //-1
			
			//get regs for arrays
			string srcreg = rh.getAvailReg();
			string destreg = rh.getAvailReg();
			string valreg = rh.getAvailReg();
			
			if (!(srcreg.length()) || !(destreg.length()) || !(valreg.length()))
				return; //-1
			
			//init source array
			li(srcreg, numberToString(src->getOffset()));
			mul(srcreg, srcreg, numberToString(STACK_ENTRY_SIZE));
			sub(srcreg, fp_reg, srcreg);
			
			//init destination array
			li(destreg, numberToString(dest->getOffset()));
			mul(destreg, destreg, numberToString(STACK_ENTRY_SIZE));
			sub(destreg, fp_reg, destreg);
			
			for (int i = 0; i < dest->getArrSize(); i++) {
				lw(valreg, srcreg);
				sw(valreg, parent_reg(destreg));
				sub(srcreg, srcreg, numberToString(STACK_ENTRY_SIZE));
				sub(destreg, destreg, numberToString(STACK_ENTRY_SIZE));
			}
			
			rh.returnRegisterToPool(srcreg);
			rh.returnRegisterToPool(destreg);
			rh.returnRegisterToPool(valreg);
			
			return; //0
		}

		void booleanRegisterHandle(string newReg, vector<int> trueList, vector<int> falseList){
			
			//cout << "boolean allocated register " << newReg << endl;
			string load_true_label = CodeBuffer::instance().genLabel();
			li(newReg, "1");
			vector<int> nextList = makelist(gotoEmpty());

			string load_false_label = CodeBuffer::instance().genLabel();
			li(newReg, "0");
			string next_inst_label = CodeBuffer::instance().genLabel();

			CodeBuffer::instance().bpatch(trueList, load_true_label);
			/*for(int i=0;i<falseList.size();i++){
				cout << "falseList[i]: " << falseList[i] << endl;
			}
			cout << "load_false_label: " << load_false_label << endl;*/
			CodeBuffer::instance().bpatch(falseList, load_false_label);
			CodeBuffer::instance().bpatch(nextList, next_inst_label);
		}
};