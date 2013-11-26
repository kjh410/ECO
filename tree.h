#ifndef TREE
#define TREE

#include"include_list.h" 
//#define OBJECT_OUTPUT
class Node;
class Wire;
class netlist_parser;
class Tree{
private:
	Node* node_list;
	Wire* wire_list;

public:
	Tree();
	~Tree();
	Tree(Node *n_list,Wire *w_list);
	int function(char* name, int* value, int n_input);
	//int* input_maker(int number);
	void make_tree();
	//void print();
};


class Print{
private:	
#ifdef OBJECT_OUTPUT
	int **output;
#endif
#ifndef OBJECT_OUTPUT
	int *output;
#endif
	int *one_count;
	int output_band;
	ofstream* of_file;
public:
	Print();
	Print(Node* node);
	~Print();
	void make_object(Wire* wire, Node* node,int* array);
};
#endif
