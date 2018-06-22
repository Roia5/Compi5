#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <sstream>
#include "bp.hpp"
#include "attributes.hpp"
#include "registers.cpp"

using namespace std;

class emitter {
	private:
		RegisterHandler rh;
		int action3op(string act, string rdest, string rsrc, string src) {
			return emit(act + " " + rdest + ", " + rsrc + ", " + src);
		}
		
		int condjump(string cond, string rsrc, string src, string label) {
			return emit(cond + " " + rsrc + ", " + src + ", " + label);
		}
		
		int jump(string jorjal, string label) {
			return emit(jorjal + " " + label);
		}
		
		/*void print_error(string fun, string error_address){
			string error_reg = rh.getAvailReg();
			la(error_reg, error_address);
			pushRegister(error_reg);
			rh.returnRegisterToPool(error_reg);
			jal(fun);
			jal("end_of_program");
		}
		
		int get_var_offset(string var) {
			TEntry* evar = findByID(var);
			//if (!evar) problem...
			return evar->getOffset();
		}*/
		
		//static int valid_unique_label;
	public:
		emitter(RegisterHandler& rh) : rh(rh) {} // valid_unique_label = 0;
		void onFunctionCall(string name, vector<string> argumentRegs){	//saving all used registers by caller, $fp, $ra, argument registers, then resets pool.
			//vector<string> usedRegVec = rh.getUsedRegisters();
			/*for(int i=0;i<usedRegVec.size();i++){
				pushRegister(usedRegVec[i]);
			}*/
			for(int i=0;i<18;i++){
				pushRegister(regIndexToName(i));
			}
			pushRegister("$fp");
			pushRegister("$ra");
			for(int i=0;i<argumentRegs.size();i++){
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
			popRegister("$ra");
			popRegister("$fp");
			for(int i=17;i>=0;i--){
				popRegister(regIndexToName(i));
			}

		}
		int buildMain(){
			emit("");
			emit(".globl main");
			emit(".ent  main");
			emit("main:");
			emit("");
			mov("$fp","$sp");
			//pushRegister("$fp");
			//pushRegister("$ra");
			int ret = emit ("jal ");
			//popRegister("$ra");
			//popRegister("$fp");
			emit("li $v0,10"); //terminate program
			emit("syscall");
			emit(".end main");
			emit("");
			return ret;
		}
		void pushRegister(string reg){
			sub("$sp","$sp","4");
			sw(reg,"($sp)");
		}
		void popRegister(string reg){
			lw(reg, "($sp)");
			add("$sp","$sp","4");
		}
		
		void initArray(string reg, int length){
			sub("$sp","$sp",numberToString(length*4));
			sw(reg,"($sp)");
			for(int i=1;i<length;i++){
				sw(reg,numberToString(i*4) + "($sp)");
			}
		}
		
		void loadVariable(string rdest, int offset){
			int real_offset = -4*(offset);
			lw(rdest,numberToString(real_offset) + "($fp)");
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
			beq(src, "0", "labelZeroDiv");
			return action3op("div", rdest, rsrc, src);
		}
		
		//copy contect of source register to destination register
		int mov(string rdest, string rsrc) {
			return emit("move " + rdest + ", " + rsrc);
		}
		
		//
		int beq(string rsrc, string src, string label) {
			return condjump("beq", rsrc, src, label);
		}
		
		//
		int bne(string rsrc, string src, string label) {
			return condjump("bne", rsrc, src, label);
		}
		
		//
		int blt(string rsrc, string src, string label) {
			return condjump("blt", rsrc, src, label);
		}
		
		//
		int ble(string rsrc, string src, string label) {
			return condjump("ble", rsrc, src, label);
		}
		
		//
		int bgt(string rsrc, string src, string label) {
			return condjump("bgt", rsrc, src, label);
		}
		
		//
		int bge(string rsrc, string src, string label) {
			return condjump("bge", rsrc, src, label);
		}
		
		//jump to label
		int jmp(string label) {
			return jump("j", label);
		}
		
		//jump to label and save pre-jump address to ra register
		int jal(string label) {
			return jump("jal", label);
		}

		//return from func and restore ra register
		int jr(){
			return emit("jr $ra");
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
        	mov("$fp", "$sp");
        	sub("$fp","$fp","4");
		}

		void funcEnd(string name){
			string real_name = "_" + name + "_";
			jr();
			emit(".end " + real_name);
			emit("");
		}

		/// <summary>
        /// check if index is in array range
        /// </summary>
        /// <param name="arr_size">array size</param>
        /// <param name="idx_reg">register contains the index value</param>
		int arrayIsInRange(string arr_size, string idx_reg) {
			bge(idx_reg, arr_size, "labelOutOfRange");
			return blt(idx_reg, "0", "labelOutOfRange");
		}
};