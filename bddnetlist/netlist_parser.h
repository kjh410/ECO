#ifndef NETLIST_PARSER
#define NETLIST_PARSER

#include "include_list.h"


class netlist_parser{

public:
	netlist_parser(char * fn_net);
	netlist_parser();
	~netlist_parser();

	//private function
private:
	void parser();
	void print_parsing_netlist_info();
	int the_num_of_assign;
	//private variable
public:
	void clear_data();
	string							filename_net;
	ifstream						if_net;	
	ofstream						of_net;

	string							module_name;
	
	deque<int>						output_port_bandwidth;	
	deque<string>					output_port_name;
	deque<int>						input_port_bandwidth;
	deque<string>					input_port_name;
	deque<string>					wire_port_name;
	deque<int>						wire_port_bandwidth;

	deque<string>					instance_module_name;
	deque<string>					instance_name;
	deque<int>						number_of_port;
	deque<string>					interconnect_name;

};


#endif

