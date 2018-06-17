#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <sstream>
#include "bp.cpp"

using namespace std;
using namespace CodeBuffer;

class emitter {
	private:
		int action3op(string act, string rdest, string rsrc, string src) {
			return CodeBuffer.emit(act + " " + rdest + ", " + rsrc + ", " + src);
		}
		
		int condjump(string cond, string rsrc, string src, string label) {
			return CodeBuffer.emit(cond + " " + rsrc + ", " + src + ", " + label);
		}
	
	public:
		int add(string rdest, string rsrc, string src) {
			return action3op("addu", rdest, rsrc, src);
		}
		
		int sub(string rdest, string rsrc, string src) {
			return action3op("subu", rdest, rsrc, src);
		}
		
		int mul(string rdest, string rsrc, string src) {
			return action3op("mul", rdest, rsrc, src);
		}
		
		//int div(string rdest, string rsrc, string src) {
		//	CodeBuffer.emit("mul " + rdest + ", " + rsrc + ", " + src);
		//}
		
		int move(string rdest, string rsrc) {
			return CodeBuffer.emit("move " + rdest + ", " + rsrc);
		}
		
		int jump(string label) {
			return CodeBuffer.emit("j " + label);
		}
		
		int beq(string rsrc, string src, string label) {
			return condjump("beq", rsrc, src, label);
		}
		
		int bne(string rsrc, string src, string label) {
			return condjump("bne", rsrc, src, label);
		}
		
		int blt(string rsrc, string src, string label) {
			return condjump("blt", rsrc, src, label);
		}
		
		int ble(string rsrc, string src, string label) {
			return condjump("ble", rsrc, src, label);
		}
		
		int bgt(string rsrc, string src, string label) {
			return condjump("bgt", rsrc, src, label);
		}
		
		int bge(string rsrc, string src, string label) {
			return condjump("bge", rsrc, src, label);
		}
}