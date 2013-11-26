#include "include_list.h"
#include "Ddwire.h"
#include "util.h"

DdWire::DdWire(){
	__pDdNode = NULL;
	__pName = NULL;
	__index = -1;
	__type = -1;
	__pNext = NULL;
	__pOutputListNext = NULL;
	__pInputListNext = NULL;
}

DdWire::DdWire(DdManager * pDdManager, char * pName, int index, int type){
	__type = type;
	if(type == 1)
		__pDdNode = Cudd_bddNewVar(pDdManager);
	else
		__pDdNode = NULL;
	
	__pName = pName;
	__index = index;
	__pNext = NULL;
	__pOutputListNext = NULL;
	__pInputListNext = NULL;
}

DdWire::~DdWire(){
}

