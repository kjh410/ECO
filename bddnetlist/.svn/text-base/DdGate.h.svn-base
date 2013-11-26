#include "DdWire.h"

enum Gate{
	NOT, AND, NAND, OR, NOR, XOR, XNOR, ASSIGN, UNKNOWN
};

class DdGate{
private:
	Gate __gate;
	DdWire ** __ppInputWires;
	DdWire * __pOutputWire;
	int __number_of_inputs;
	DdGate * __pNext;
	bool __computed;

	void setGatebyName(char * pName);
	DdNode * gateFuncElem(DdManager * pDdManager, DdNode * pa, DdNode * pb);
	
public:
	DdGate();
	DdGate(int number_of_inputs, char * pGateName);
	~DdGate();
	
	void setNext(DdGate * pNext){__pNext = pNext;};
	DdGate * getNext(){return __pNext;};
	void setOutputWire(DdWire * pWire){__pOutputWire = pWire;};
	void setInputWireat(DdWire * pWire, int index){__ppInputWires[index] = pWire;};	
	int getNumberofInputs(){return __number_of_inputs;};
	DdWire * getInputWireat(int index){return __ppInputWires[index];};
	bool isComputable();
	bool isComputed(){return __computed;};
	DdNode * gateFunc(DdManager * pDdManager);
	DdWire * getOutputWire(){return __pOutputWire;};
};
	
