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
			return CodeBuffer.emit(act + " " + rdest + ", " + rsrc + ", " + src);
		}
		
		int condjump(string cond, string rsrc, string src, string label) {
			return CodeBuffer.emit(cond + " " + rsrc + ", " + src + ", " + label);
		}
		
		int jump(string jorjal, string label) {
			return CodeBuffer.emit(jorjal + " " + label);
		}
		
		void print_error(string fun, string error_address){
			string error_reg = getAvailReg();
			la(error_reg, error_address)
			pushRegister(error_reg);
			addRegToPool();
			jal(fun);
			jal("end_of_program");
		}
		
		static int valid_unique_label;
	public:
		emitter(RegisterHandler& rh) : rh(rh) { valid_unique_label(0) }
		void onFunctionCall(string name, vector<string> argumentRegs){	//saving all used registers by caller, $fp, $ra, argument registers, then resets pool.
			vector<string> usedRegVec = rh.getUsedRegisters();
			for(int i=0;i<usedRegVec.size();i++){
				pushRegister(usedRegVec[i]);
			}
			pushRegister("$fp");
			pushRegister("$ra");
			for(int i=0;i<argumentRegs.size();i++){
				pushRegister(argumentRegs[i]);
			}
			rh.resetPool();
			jal(name);
		}
		void onFunctionReturn(){
			
			jr();
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
			int real_offset = -4*offset;
			lw(rdest,numberToString(real_offset) + "($fp)");
		}
		void zeroTopBits(string reg){
			CodeBuffer.emit("sll " + reg + ", " + reg + ", 24");	//shift left 24 bits
			CodeBuffer.emit("srl " + reg + ", " + reg + ", 24");	//shift right 24 bits
		}
		//load address to register
		int la(string rdest, string address) {
			return CodeBuffer.emit("la " + rdest + ", " + address);
		}
		
		//load immediate to register
		int li(string rdest, string im) {
			return CodeBuffer.emit("li " + rdest + ", " + im);
		}
		
		//load word at adress to register
		int lw(string rdest, string address) {
			return CodeBuffer.emit("lw " + rdest + ", " + address);
		}
		
		//store word from register to address
		int sw(string rsrc, string address) {
			return CodeBuffer.emit("sw " + rsrc + ", " + address);
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
			int emitted = bne(src, "0", " ");
			
			print_error("print", "errorZeroDiv");
			
			string valid_label = "div_ok_" + numberToString(++valid_unique_label);
			CodeBuffer.emit(valid_label + ":");
			CodeBuffer.bpatch(CodeBuffer.makelist(emitted), valid_label);
			
			return action3op("div", rdest, rsrc, src);
		}
		
		//copy contect of source register to destination register
		int mov(string rdest, string rsrc) {
			return CodeBuffer.emit("move " + rdest + ", " + rsrc);
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

		int jr(){
			return CodeBuffer.emit("jr $ra");
		}
		
		//no operation
		int nop() {
			return CodeBuffer.emit("nop");
		}
		
		int arrayIsInRange(string arr, string idx) {
			//string reg_arr = getAvailReg();
			//string reg_idx = getAvailReg();
			//loadVariable(reg_arr, int offset);
			//loadVariable(reg_idx, int offset);
			//CodeBuffer.emit("sub ");
			//CodeBuffer.emit("nop");
			
			return 0;
		}
}