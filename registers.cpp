
#include <vector>
#include <string>
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <sstream>

using namespace std;
#define NUM_REGS 18

static string regIndexToName(int index){
    switch(index){
        case 0: return "t0"; break;
        case 1: return "t1"; break;
        case 2: return "t2"; break;
        case 3: return "t3"; break;
        case 4: return "t4"; break;
        case 5: return "t5"; break;
        case 6: return "t6"; break;
        case 7: return "t7"; break;
        case 8: return "s0"; break;
        case 9: return "s1"; break;
        case 10: return "s2"; break;
        case 11: return "s3"; break;
        case 12: return "s4"; break;
        case 13: return "s5"; break;
        case 14: return "s6"; break;
        case 15: return "s7"; break;
        case 16: return "t8"; break;
        case 17: return "t9"; break;
    }
    cout << "regIndexToName error" << endl;
    return "";
}
static string regNameToIndex(string name){
    if (name == "$t0") return 0;
    if (name == "$t1") return 1;
    if (name == "$t2") return 2;
    if (name == "$t3") return 3;
    if (name == "$t4") return 4;
    if (name == "$t5") return 5;
    if (name == "$t6") return 6;
    if (name == "$t7") return 7;
    if (name == "$s0") return 8;
    if (name == "$s1") return 9;
    if (name == "$s2") return 10;
    if (name == "$s3") return 11;
    if (name == "$s4") return 12;
    if (name == "$s5") return 13;
    if (name == "$s6") return 14;
    if (name == "$s7") return 15;
    if (name == "$t8") return 16;
    if (name == "$t9") return 17;
    cout << "regNameToIndex error" << endl;
    return -1;
}

class RegisterHandler {
private:
    std::vector<int> availRegs;
    std::vector<int> usedRegs;
public:
    RegisterHandler() {
        for(int i=NUM_REGS-1;i>=0;i--){
            availRegs.push_back(i);
        }
    }
    string getAvailReg() {
        if(availRegs.size()==0){
            cout << "no available register" << endl;
            return "";
        }
        string regToReturn = regIndexToName(availRegs.back());
        availRegs.pop_back();
        usedRegs.push_back(regToReturn);
        return regToReturn;
    }
    void returnRegisterToPool(string reg){
        int regNum = regNameToIndex(reg);
        if(availRegs.size()!=NUM_REGS){
            for(int i=0;i<usedRegs.size();i++){
                if(usedRegs[i]==regNum){
                    usedRegs.erase(usedRegs.begin()+i);
                    availRegs.push_back(regNum);
                    break;
                }
            }
        }
    }
    vector<string> getUsedRegisters(){
        vector<string> ret_vec;
        for(int i=0;i<usedRegs.size();i++){
            ret_vec.push_back(regIndexToName(usedRegs[i]));
        }
        return ret_vec;
    }
    void resetPool(){
        usedRegs.clear();
        availRegs.clear();
        for(int i=NUM_REGS-1;i>=0;i--){
            availRegs.push_back(i);
        }
    }

};

