
class DdManager;
class DdNode;
class Wire;
class Node;

class VerilogMaker{
private:
	Node* Node_list;
	ofstream of_net;
	ifstream sop;
	char* filename;
public:
	VerilogMaker();
	VerilogMaker(Node* list, char* filename);
	void Function(char** outputName, int n_output,char** inputName, int n_input);
	~VerilogMaker();

};	
