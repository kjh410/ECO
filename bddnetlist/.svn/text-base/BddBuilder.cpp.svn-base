#include "include_list.h"
//#include "cudd.h"
//#include "util.h"
#include "BddBuilder.h"
#include "util.h"

BddBuilder::BddBuilder(){
	__pddWireHead = __pddWireTail = NULL;
	__pddOutputWireHead = __pddOutputWireTail = NULL;
	__pddOutputNodes = NULL;
	__pddGateHead = __pddGateTail = NULL;
	__pddInputNodes = NULL;

	__pddManager = Cudd_Init(0, 0, CUDD_UNIQUE_SLOTS, CUDD_CACHE_SLOTS, 0);

	__Vcc = Cudd_ReadOne(__pddManager);
	__GND = Cudd_ReadZero(__pddManager);
	
	char * name_vcc = new char[4];
	char * name_gnd = new char[4];

	sprintf(name_vcc, "Vcc");
	sprintf(name_gnd, "GND");

	__VccWire = new DdWire(__pddManager, name_vcc, 0, 0);
	__GNDWire = new DdWire(__pddManager, name_gnd, 0, 0);
	__VccWire->setDdNode(__Vcc);
	__GNDWire->setDdNode(__GND);

	Cudd_Ref(__Vcc);
	Cudd_Ref(__GND);

	if(__pddManager == NULL){
		perror("DdManager initializing error.");
	}

	//__inputWireCnt = 2; // Vcc & GND
	__inputWireCnt = -1;
	__outputWireCnt = -1;

	__pddInputWireHead = __VccWire;
	__VccWire->setInputListNext(__GNDWire);
	__pddInputWireTail = __GNDWire;
}

BddBuilder::BddBuilder(BddBuilder * pA){
	__pddWireHead = __pddWireTail = NULL;
	__pddOutputWireHead = __pddOutputWireTail = NULL;
	__pddOutputNodes = NULL;
	__pddGateHead = __pddGateTail = NULL;
	__pddInputNodes = NULL;

	__pddManager = pA->__pddManager;

	__Vcc = Cudd_ReadOne(__pddManager);
	__GND = Cudd_ReadZero(__pddManager);
	
	char * name_vcc = new char[4];
	char * name_gnd = new char[4];

	sprintf(name_vcc, "Vcc");
	sprintf(name_gnd, "GND");

	__VccWire = new DdWire(__pddManager, name_vcc, 0, 0);
	__GNDWire = new DdWire(__pddManager, name_gnd, 0, 0);
	__VccWire->setDdNode(__Vcc);
	__GNDWire->setDdNode(__GND);
	
	if(__pddManager == NULL){
		perror("DdManager initializing error.");
	}

	//__inputWireCnt = 2; // Vcc & GND
	__inputWireCnt = -1;
	__outputWireCnt = -1;

	__pddInputWireHead = __VccWire;
	__VccWire->setInputListNext(__GNDWire);
	__pddInputWireTail = __GNDWire;
}


DdWire * BddBuilder::__addDdWire(Wire * pWire){
	DdWire * pNewDdWire = new DdWire(__pddManager, pWire->get_name(), pWire->get_index(), pWire->get_type());

	if(!__pddWireHead)
		__pddWireHead = __pddWireTail = pNewDdWire;
	else{
		__pddWireTail->setNext(pNewDdWire);
		__pddWireTail = pNewDdWire;
	}

	if(pWire->get_type() == 2){
		if(!__pddOutputWireHead)
			__pddOutputWireHead = __pddOutputWireTail = pNewDdWire;
		else{
			__pddOutputWireTail->setOutputListNext(pNewDdWire);
			__pddOutputWireTail = pNewDdWire;
		}
		++__outputWireCnt;
	}
	else if(pWire->get_type() == 1){
		if(!__pddInputWireHead)
			__pddInputWireHead = __pddInputWireTail = pNewDdWire;
		else{
			__pddInputWireTail->setInputListNext(pNewDdWire);
			__pddInputWireTail = pNewDdWire;
		}
		++__inputWireCnt;
	}

	return pNewDdWire;
}

DdWire * BddBuilder::__addDdWireB(BddBuilder * pA, Wire * pWire){
	DdWire * pNewDdWire;

	if(pWire->get_type() != 1)
		pNewDdWire = new DdWire(__pddManager, pWire->get_name(), pWire->get_index(), pWire->get_type());
	else{
		pNewDdWire = new DdWire(__pddManager, pWire->get_name(), pWire->get_index(), 0);
		for(int i=0 ; i<pA->__inputWireCnt ; ++i){
			if(!strcmp(pA->__ppInputNodesNames[i], pWire->get_name())){
				pNewDdWire->setDdNode(pA->__pddInputNodes[i]);
				break;
			}
		}
		if(pNewDdWire->getDdNode() == NULL){
			pNewDdWire->setDdNode(Cudd_bddNewVar(__pddManager));
		}
	}

	if(!__pddWireHead)
		__pddWireHead = __pddWireTail = pNewDdWire;
	else{
		__pddWireTail->setNext(pNewDdWire);
		__pddWireTail = pNewDdWire;
	}

	if(pWire->get_type() == 2){
		if(!__pddOutputWireHead)
			__pddOutputWireHead = __pddOutputWireTail = pNewDdWire;
		else{
			__pddOutputWireTail->setOutputListNext(pNewDdWire);
			__pddOutputWireTail = pNewDdWire;
		}
		++__outputWireCnt;
	}
	else if(pWire->get_type() == 1){
		if(!__pddInputWireHead)
			__pddInputWireHead = __pddInputWireTail = pNewDdWire;
		else{
			__pddInputWireTail->setInputListNext(pNewDdWire);
			__pddInputWireTail = pNewDdWire;
		}
		++__inputWireCnt;
	}

	return pNewDdWire;
}

DdGate * BddBuilder::__addDdGate(Node * pNode){
	DdWire * pddWireHorse = NULL;	
	int number_of_inputs = pNode->get_number_of_input();
	DdGate * pNewDdGate = new DdGate(number_of_inputs, pNode->get_module_name());
	
	char * o_wire_name = pNode->get_output_name();
	for(pddWireHorse = __pddWireHead ; pddWireHorse ; pddWireHorse = pddWireHorse->getNext()){
		if(!strcmp(pddWireHorse->getName(), o_wire_name)){
			pNewDdGate->setOutputWire(pddWireHorse);
			break;
		}
	}

	char ** i_wire_names = pNode->get_input_name();
	for(int i=0 ; i<number_of_inputs ; ++i){
		if(!strcmp(i_wire_names[i], "0"))
			pNewDdGate->setInputWireat(__GNDWire, i);
		else if(!strcmp(i_wire_names[i], "1"))
			pNewDdGate->setInputWireat(__VccWire, i);
		else{
			for(pddWireHorse = __pddWireHead ; pddWireHorse ; pddWireHorse = pddWireHorse->getNext()){
				if(!strcmp(i_wire_names[i], pddWireHorse->getName())){
					pNewDdGate->setInputWireat(pddWireHorse, i);
					break;
				}
			}
		}
	}
	//delete[] i_wire_names;

	if(!__pddGateHead)
		__pddGateHead = __pddGateTail = pNewDdGate;
	else{
		__pddGateTail->setNext(pNewDdGate);
		__pddGateTail = pNewDdGate;
	}

	return pNewDdGate;
}

void BddBuilder::__buildWireList(Wire * pWireHead){
	Wire * pWireHorse;
	DdWire * pNewWire;
	DdWire * pInputWireHorse;
	__inputWireCnt = 0;
	__outputWireCnt = 0;

	for(pWireHorse=pWireHead ; pWireHorse ; pWireHorse=pWireHorse->get_next()){
		pNewWire = __addDdWire(pWireHorse);		
		switch(pWireHorse->get_value()){
			case -1: break;
			case 0: pNewWire->setDdNode(__GND); break;
			case 1: pNewWire->setDdNode(__Vcc); break;
			default: break;
		}
	}
	__pddInputNodes = new DdNode*[__inputWireCnt];
	__ppInputNodesNames = new char*[__inputWireCnt];
	int i=0;
	pInputWireHorse=__pddInputWireHead->getInputListNext()->getInputListNext();
	for( ; pInputWireHorse ; pInputWireHorse=pInputWireHorse->getInputListNext()){
		__ppInputNodesNames[i] = pInputWireHorse->getName();
		__pddInputNodes[i++] = pInputWireHorse->getDdNode();
	}
}

void BddBuilder::__buildWireListB(BddBuilder * pA, Wire * pWireHead){
	Wire * pWireHorse;
	DdWire * pNewWire;
	DdWire * pInputWireHorse;
	__inputWireCnt = 0;
	__outputWireCnt = 0;

	for(pWireHorse=pWireHead ; pWireHorse ; pWireHorse=pWireHorse->get_next()){
		pNewWire = __addDdWireB(pA, pWireHorse);		
		switch(pWireHorse->get_value()){
			case -1: break;
			case 0: pNewWire->setDdNode(__GND); break;
			case 1: pNewWire->setDdNode(__Vcc); break;
			default: break;
		}
	}
	__pddInputNodes = new DdNode*[__inputWireCnt];
	__ppInputNodesNames = new char*[__inputWireCnt];
	int i=0;
	pInputWireHorse = __pddInputWireHead->getInputListNext()->getInputListNext();
	for( ; pInputWireHorse ; pInputWireHorse=pInputWireHorse->getInputListNext()){
		__ppInputNodesNames[i] = pInputWireHorse->getName();
		__pddInputNodes[i++] = pInputWireHorse->getDdNode();
	}
}

void BddBuilder::__buildGateList(Node * pNodeHead){
	Node * pNodeHorse;
	__node_cnt = 0;

	for(pNodeHorse=pNodeHead ; pNodeHorse ; pNodeHorse=pNodeHorse->get_next()){
		__addDdGate(pNodeHorse);
		++__node_cnt;
	}
}


void BddBuilder::__linkWires(){
	DdGate * pddGateHorse = __pddGateHead;
	DdWire * pOutputWireHorse;

	for(int fin_cnt = 0 ; fin_cnt != __node_cnt ; pddGateHorse=pddGateHorse->getNext()){
		if(!pddGateHorse){
			pddGateHorse = __pddGateHead;
		}
		if(!pddGateHorse->isComputed()){
			if(pddGateHorse->isComputable()){
				pddGateHorse->gateFunc(__pddManager);
				++fin_cnt;
			}
		}
	}
	__pddOutputNodes = new DdNode*[__outputWireCnt];
	__ppOutputNodesNames = new char*[__outputWireCnt];
	int i=0;
	for(pOutputWireHorse=__pddOutputWireHead ; pOutputWireHorse ; pOutputWireHorse=pOutputWireHorse->getOutputListNext()){
		__ppOutputNodesNames[i] = pOutputWireHorse->getName();
		__pddOutputNodes[i++] = pOutputWireHorse->getDdNode();
	}
}

void BddBuilder::construct(Wire * pWireHead, Node * pNodeHead){
	__buildWireList(pWireHead);
	__buildGateList(pNodeHead);
	__linkWires();
	printf("Bdd Built.\n");
}

void BddBuilder::constructB(BddBuilder * pA, Wire * pWireHead, Node * pNodeHead){
	__buildWireListB(pA, pWireHead);
	__buildGateList(pNodeHead);
	__linkWires();
	printf("Bdd(B) Built.\n");
}


void BddBuilder::dotDump(){
	char filename[128];
	DdNode * dumpdd[1];
	char * dumpname[1];
	int res;
	for(int i=0 ; i<__outputWireCnt ; ++i){
		sprintf(filename, "./dotdump/dump_%s.dot", __ppOutputNodesNames[i]);
		FILE * fp = fopen(filename, "w");
		dumpdd[0] = __pddOutputNodes[i];
		dumpname[0] = __ppOutputNodesNames[i];
		res = Cudd_DumpDot(__pddManager, 1, dumpdd, __ppInputNodesNames, dumpname, fp);
		if(res == 1)
			printf("DOT dump for %s completed.\n", __ppOutputNodesNames[i]);
		else
			printf("DOT dump for %s failed.\n", __ppOutputNodesNames[i]);
		fclose(fp);
	}
	//cout<<Cudd_ReadNodeCount(__pddManager)<<endl;
}

void BddBuilder::dotDumpC(DdNode ** ddNodes){
	char filename[128];
	DdNode * dumpdd[1];
	char * dumpname[1];
	int res;
	for(int i=0 ; i<__outputWireCnt ; ++i){
		if(ddNodes[i] != NULL){
			sprintf(filename, "./dotdump/dumpC_%s.dot", __ppOutputNodesNames[i]);
			FILE * fp = fopen(filename, "w");
			dumpdd[0] = ddNodes[i];
			dumpname[0] = __ppOutputNodesNames[i];
			res = Cudd_DumpDot(__pddManager, 1, dumpdd, __ppInputNodesNames, dumpname, fp);
			//Cudd_PrintDebug(__pddManager, dumpdd[0], Cudd_ReadSize(__pddManager), 4);
			sprintf(filename, "./sop/%s.sop", __ppOutputNodesNames[i]);
			FILE * fp_sop = fopen(filename, "w");
			FILE * tmp;

			printf("%s's SOP:\n", __ppOutputNodesNames[i]);
			Cudd_bddPrintCover(__pddManager, dumpdd[0], dumpdd[0]);
		
			tmp = Cudd_ReadStdout(__pddManager);
			Cudd_SetStdout(__pddManager, fp_sop);
			Cudd_bddPrintCover(__pddManager, dumpdd[0], dumpdd[0]);
			Cudd_SetStdout(__pddManager, tmp);
			fclose(fp_sop);
			printf("SOP file written : ./sop/%s.sop\n", __ppOutputNodesNames[i]);
			//Cudd_PrintMinterm(__pddManager, dumpdd[0]);
			if(res == 1)
				printf("DOT dump for C's %s completed.\n", __ppOutputNodesNames[i]);
			else
				printf("DOT dump for C's %s failed.\n", __ppOutputNodesNames[i]);
			fclose(fp);
		}
		else
			printf("DOT dump for C's %s not executed: A = B\n", __ppOutputNodesNames[i]);
	}
	
}


BddBuilder::~BddBuilder(){
	if(__pddInputNodes)
		delete[] __pddInputNodes;
		
	if(__pddOutputNodes){
		for(int i=__outputWireCnt-1 ; i>=0 ; --i)
			Cudd_RecursiveDeref(__pddManager, __pddOutputNodes[i]);
		delete[] __pddOutputNodes;
	}

	DdWire * pWireHorse;
	DdWire * pWireTmp;
	for(pWireHorse=__pddWireHead ; pWireHorse ; ){
		pWireTmp = pWireHorse;
		pWireHorse = pWireHorse->getNext();
		delete pWireTmp;
	}

	DdGate * pGateHorse;
	DdGate * pGateTmp;
	for(pGateHorse=__pddGateHead ; pGateHorse ; ){
		pGateTmp = pGateHorse;
		pGateHorse = pGateHorse->getNext();
		delete pGateTmp;
	}

	delete[] __ppInputNodesNames;
	delete[] __ppOutputNodesNames;
	delete[] __VccWire->getName();
	delete[] __GNDWire->getName();
	delete __VccWire;
	delete __GNDWire;
}

DdNode ** BddBuilder::getXORdNodeList(BddBuilder * pB){
	DdNode ** toret = new DdNode*[__outputWireCnt];

	for(int i=0 ; i<__outputWireCnt ; ++i){
		if(__pddOutputNodes[i] != pB->__pddOutputNodes[i]){
			toret[i] = Cudd_bddXor(__pddManager, __pddOutputNodes[i], pB->__pddOutputNodes[i]);
			Cudd_Ref(toret[i]);
		}
		else{
			toret[i] = NULL;
			printf("pB[%d] = NULL\n", i);
		}
	}

	return toret;
}

DdNode ** BddBuilder::getXORdNodeList(DdNode ** ppC){
	DdNode ** toret = new DdNode*[__outputWireCnt];

	for(int i=0 ; i<__outputWireCnt ; ++i){
		if(ppC[i]){
			toret[i] = Cudd_bddXor(__pddManager, __pddOutputNodes[i], ppC[i]);
			Cudd_Ref(toret[i]);
		}
		else
			toret[i] = __pddOutputNodes[i];
	}
	return toret;
}

int BddBuilder::checkEquality(DdNode ** ppC){
	for(int i=0 ; i<__outputWireCnt ; ++i){
		if(ppC[i]){
			if(__pddOutputNodes[i] != ppC[i])
				return -1;
		}
	}
	return 0;
}
