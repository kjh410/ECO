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

void DdGate::printError(DdManager * __pddManager){
	Cudd_ErrorType err = Cudd_ReadErrorCode(__pddManager);
        if(err == CUDD_MEMORY_OUT)
                printf("**err : CUDD_MEMORY_OUT\n");
        else if(err == CUDD_TOO_MANY_NODES)
                printf("**err : CUDD_TOO_MANY_NODES\n");
        else if(err == CUDD_MAX_MEM_EXCEEDED)
                printf("**err : CUDD_MAX_MEM_EXCEEDED\n");
        else if(err == CUDD_INVALID_ARG)
                printf("**err : CUDD_INVALID_ARG\n");
        else if(err == CUDD_INTERNAL_ERROR)
                printf("**err : CUDD_INTERNAL_ERROR\n");
}


DdNode * DdGate::gateFuncElem(DdManager * pDdManager, DdNode * pa, DdNode * pb){
	switch(__gate){
		case AND:
			printf("& ");
			return Cudd_bddAnd(pDdManager, pa, pb);
		case NAND:
			printf("~& ");
			return Cudd_bddNand(pDdManager, pa, pb);
		case OR:
			printf("| ");
			return Cudd_bddOr(pDdManager, pa, pb);
		case NOR:
			printf("~| ");
			return  Cudd_bddNor(pDdManager, pa, pb);
		case XOR:
			printf("^ ");
			return Cudd_bddXor(pDdManager, pa, pb);
		case XNOR:
			printf("~^ ");
			return Cudd_bddXnor(pDdManager, pa, pb);
		case NOT:
			printf("~");
			return Cudd_bddNand(pDdManager, pa, pa);
		default:
			return NULL;
	}
}

DdNode * DdGate::gateFunc(DdManager * pDdManager){
	DdNode * p_o_tmp=NULL;
	printf("%s = ", __pOutputWire->getName());
	if(__gate == NOT){
		p_o_tmp = Cudd_bddNand(pDdManager, __ppInputWires[0]->getDdNode(), __ppInputWires[0]->getDdNode());
		printError(pDdManager);
		printf("~%s\n", __ppInputWires[0]->getName());
		Cudd_Ref(p_o_tmp);
		printError(pDdManager);
		//Cudd_RecursiveDeref(pDdManager, __ppInputWires[0]->getDdNode());

	}
	else if(__gate == ASSIGN){
		p_o_tmp = __ppInputWires[0]->getDdNode();
		printf("%s\n", __ppInputWires[0]->getName());
	}
	else if(__gate != UNKNOWN){
		if(__number_of_inputs > 1){

			printf("%s ", __ppInputWires[0]->getName());
			p_o_tmp=gateFuncElem(pDdManager, __ppInputWires[0]->getDdNode(), __ppInputWires[1]->getDdNode());

			printf("%s ", __ppInputWires[1]->getName());
			Cudd_Ref(p_o_tmp);
			printError(pDdManager);
			//Cudd_RecursiveDeref(pDdManager, __ppInputWires[0]->getDdNode());
			//Cudd_RecursiveDeref(pDdManager, __ppInputWires[1]->getDdNode());
			for(int i=2 ; i<__number_of_inputs ; ++i){
				p_o_tmp=gateFuncElem(pDdManager, p_o_tmp, __ppInputWires[i]->getDdNode());
				printf("%s ", __ppInputWires[i]->getName());
				Cudd_Ref(p_o_tmp);
				printError(pDdManager);
			}
			/*for(int i=2 ; i<__number_of_inputs ; ++i){
				Cudd_RecursiveDeref(pDdManager, __ppInputWires[i]->getDdNode());
			}*/
			printf("\n");
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


