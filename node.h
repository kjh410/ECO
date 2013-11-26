#ifndef NODE
#define NODE

#include "include_list.h"
class netlist_parser;

class Wire{
private:
	netlist_parser *Parser;
	char* name;
	char* name_except_bit;
	int value;
	int index;
	Wire* next;
	Wire* prev;
	Wire* wire_list;
	int type;
public:
	Wire();
	~Wire();
	Wire(netlist_parser& parser);
	void set_name(string& a,int length);
	void set_name_except_bit(char* a, int length);
	void set_value(int a){value=a;}	
	void set_next(Wire* a){next=a;}
	void set_prev(Wire* a){prev=a;}
	void set_index(int a){index=a;}
	char* get_name(){return name;}
	char* get_name_except_bit(){return name_except_bit;}
	int get_value(){return value;}
	int get_type(){return type;}
	int get_index(){return index;}

	Wire* get_next(){return next;}
	Wire* get_prev(){return prev;}
	Wire* make_wire();
	Wire* list(){return wire_list;}
};

class Node{
private:
	netlist_parser *Parser;

	char* instance_name;
	char* module_name;
	char** input_name;
	char* output_name;

	int number_of_input;
	int input_index;
	//int setted_input;
	bool* setted_input;
	
	//int number_of_instance;
	//int number_of_interconnect;
	bool all_input_setted;
	Node* node_list;
	Node* next;
	//Node* output;
public:
	Node();
	~Node();
	Node(netlist_parser& parser);
	void set_instance_name(string& name,int length);
	void set_input_name(string& name, int num, int length);
	void set_output_name(string& name, int length);
	void set_module_name(string& name, int length);
	//void set_inputset(bool a){inputset=a;}
	void set_setted_input(bool a,int num){setted_input[num]=a;}
	void set_next(Node* a){next=a;}
	void set_all_input_setted(bool a){all_input_setted=a;}
	char* get_instance_name(){return instance_name;}
	char* get_module_name(){return module_name;}
	char** get_input_name(){return input_name;}
	char* get_output_name(){return output_name;}
	//bool get_inputset(){return inputset;}
	int get_number_of_input(){return number_of_input;}
	bool* get_setted_input(){return setted_input;}
	bool get_all_input_setted(){return all_input_setted;}
	netlist_parser* get_parser(){return Parser;}

	Node* get_next(){return next;}
	Node* Make_node();
	Node* list(){return node_list;}
	int* input_value;

};

#endif
