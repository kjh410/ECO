#include "include_list.h"
#include "DdGate.h"
#include "util.h"

DdGate::DdGate(){
	__gate = UNKNOWN;
	__ppInputWires = NULL;
	__pOutputWire = NULL;
	__number_of_inputs = -1;
	__pNext = NULL;
	__computed = false;
}

DdGate::DdGate(int number_of_inputs, char * pGateName){
	setGatebyName(pGateName);
	__number_of_inputs = number_of_inputs;
	__ppInputWires = new DdWire*[number_of_inputs];
	__pNext = NULL;
	__pOutputWire = NULL;
	__computed = false;
}

DdGate::~DdGate(){
	if(__ppInputWires)
		delete[] __ppInputWires;
}

void DdGate::setGatebyName(char * pName){
	if(pName[0] == 'n'){
		if(pName[1] == 'a')
			__gate = NAND;
		else if(pName[2] == 't')
			__gate = NOT;
		else if(pName[2] == 'r')
			__gate = NOR;
		else
			__gate = UNKNOWN;
	}
	else if(pName[0] == 'a'){
		if(pName[1] == 'n')
			__gate = AND;
		else if(pName[1] == 's')
			__gate = ASSIGN;
		else
			__gate = UNKNOWN;
	}
	else if(pName[0] == 'o')
		__gate = OR;
	else if(pName[0] == 'x'){
		if(pName[1] == 'o')
			__gate = XOR;
		else if(pName[1] == 'n')
			__gate = XNOR;
		else
			__gate = UNKNOWN;
	}
	else
		__gate = UNKNOWN;
}

bool DdGate::isComputable(){
	for(int i=__number_of_inputs-1 ; i>=0 ; --i){
		if(!__ppInputWires[i]->getDdNode()){
			return false;
		}
	}
	return true;
}

DdNode * DdGate::gateFuncElem(DdManager * pDdManager, DdNode * pa, DdNode * pb){
	switch(__gate){
		case AND:
			return Cudd_bddAnd(pDdManager, pa, pb);
		case NAND:
			return Cudd_bddNand(pDdManager, pa, pb);
		case OR:
			return Cudd_bddOr(pDdManager, pa, pb);
		case NOR:
			return Cudd_bddNor(pDdManager, pa, pb);
		case XOR:
			return Cudd_bddXor(pDdManager, pa, pb);
		case XNOR:
			return Cudd_bddXnor(pDdManager, pa, pb);
		case NOT:
			return Cudd_bddNand(pDdManager, pa, pa);
		default:
			return NULL;
	}
}

DdNode * DdGate::gateFunc(DdManager * pDdManager){
	DdNode * p_o_tmp;
	if(__gate == NOT){
		p_o_tmp = Cudd_bddNand(pDdManager, __ppInputWires[0]->getDdNode(), __ppInputWires[0]->getDdNode());
		Cudd_Ref(p_o_tmp);

	}
	else if(__gate == ASSIGN){
		p_o_tmp = __ppInputWires[0]->getDdNode();
	}
	else if(__gate != UNKNOWN){
		if(__number_of_inputs > 1){
			p_o_tmp=gateFuncElem(pDdManager, __ppInputWires[0]->getDdNode(), __ppInputWires[1]->getDdNode());
			Cudd_Ref(p_o_tmp);
			for(int i=2 ; i<__number_of_inputs ; ++i){
				p_o_tmp=gateFuncElem(pDdManager, p_o_tmp, __ppInputWires[i]->getDdNode());
				Cudd_Ref(p_o_tmp);
			}
		}
	}
	else{
		printf("Error: Unknown gate type.\n");
		p_o_tmp = NULL;
	}
	__pOutputWire->setDdNode(p_o_tmp);
	__computed = true;

	return p_o_tmp;
}


