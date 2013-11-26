#include "cudd.h"

class DdWire{
private:
	DdNode * __pDdNode;
	char * __pName;
	int __index;
	int __type;
	DdWire * __pNext;
	DdWire * __pOutputListNext;
	DdWire * __pInputListNext;

public:
	DdWire();
	DdWire(DdManager * pDdManager, char * pName, int index, int type);
	~DdWire();
	
	void setNext(DdWire * pNext){__pNext = pNext;};
	DdWire * getNext(){return __pNext;};
	char * getName(){return __pName;};
	DdNode * getDdNode(){return __pDdNode;};
	void setDdNode(DdNode * pDdNode){__pDdNode = pDdNode;};
	void setOutputListNext(DdWire * pNext){__pOutputListNext = pNext;};
	DdWire * getOutputListNext(){return __pOutputListNext;};
	void setInputListNext(DdWire * pNext){__pInputListNext=pNext;};
	DdWire * getInputListNext(){return __pInputListNext;};
	int getIndex(){return __index;};
};
