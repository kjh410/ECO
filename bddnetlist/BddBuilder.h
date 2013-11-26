#include "DdGate.h"

class Wire;
class Node;

class BddBuilder{
private:
	DdManager*	__pddManager;

	DdWire*		__pddWireHead;		// wire list head
	DdWire*		__pddWireTail;		// wire list tail

	DdWire*		__pddInputWireHead;	// input wire list head
	DdWire*		__pddInputWireTail;	// input wire list tail
	int		__inputWireCnt;		// number of input wires
	DdNode**	__pddInputNodes;	// DdNodes of input wires
	char **		__ppInputNodesNames;
	
	DdWire*		__pddOutputWireHead;	// output wire list head
	DdWire*		__pddOutputWireTail;	// output wire list tail
	int		__outputWireCnt;	// number of output wires
	DdNode**	__pddOutputNodes;	// DdNods of output wires
	char **		__ppOutputNodesNames;

	DdGate*		__pddGateHead;		// gate(node) list head
	DdGate*		__pddGateTail;		// gate(node) list tail
	int		__node_cnt;		// number of gates(nodes)
	
	DdNode*		__Vcc;			// DdNode of Vcc = 1
	DdNode*		__GND;			// DdNode of GND = 0
	DdWire*		__VccWire;		// wire of Vcc
	DdWire*		__GNDWire;		// wire of GND

	DdWire*		__addDdWire(Wire * pWire);
	DdWire*		__addDdWireB(BddBuilder * pA, Wire * pWire);
	DdGate*		__addDdGate(Node * pNode);
	void		__buildWireList(Wire * pwireHead);
	void		__buildWireListB(BddBuilder * pA, Wire * pwireHead);
	void		__buildGateList(Node * pNodeHead);
	void		__linkWires();
public:
	void		construct(Wire * pWireHead, Node * pNodeHead);	// build BDD
	void		constructB(BddBuilder * pA, Wire * pWireHead, Node * pNodeHead);	// build BDDB
	void		dotDump();					// DOT dump
	void		dotDumpC(DdNode ** ddNodes);			// DOT dump(C)
	BddBuilder();
	BddBuilder(BddBuilder * pA);
	~BddBuilder();
	DdNode *	getOutputNodeat(int i){return __pddOutputNodes[i];};
	DdNode *	getInputNodeat(int i){return __pddInputNodes[i];};
	int		getOutputNodesLength(){return __outputWireCnt;};
	int		getInputNodesLength(){return __inputWireCnt;};
	char *		getOutputWireNameat(int i){return __ppOutputNodesNames[i];};
	char *		getInputWireNameat(int i){return __ppInputNodesNames[i];};
	DdManager *	getDdManager(){return __pddManager;};
	
	DdNode **	getXORdNodeList(BddBuilder * pB);
	DdNode **	getXORdNodeList(DdNode ** ppC);
	int 		checkEquality(DdNode ** ppC);
	int		getNodeCnt(){return __node_cnt;}
};
