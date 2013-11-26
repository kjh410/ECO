#include "node.h"
#include "netlist_parser.h"
Wire::Wire()
{
	value=-1;
	type=0;
	index=0;
	name_except_bit=NULL;
	
	wire_list=NULL;
}
Wire::Wire(netlist_parser& parser)
{
	Parser=&parser;
	wire_list=make_wire();
	name=NULL;
	name_except_bit=NULL;
}
Wire::~Wire()
{	
	if(name){
		delete []name;
		name=NULL;
	}
	if(name_except_bit){
		delete []name_except_bit;
		name_except_bit=NULL;
	}
	
}
Node::Node()
{
	number_of_input=0;
	input_index=0;		
	all_input_setted=false;
	instance_name = new char[FILE_LINE_SIZE];
	module_name = new char[FILE_LINE_SIZE];	
	output_name = new char[FILE_LINE_SIZE];
	
	node_list=NULL;
	
}
Node::Node(netlist_parser& parser)
{
	number_of_input=0;
	input_index=0;		
	Parser=&parser;
	instance_name=NULL;
	module_name=NULL;
	output_name=NULL;
	input_name=NULL;
	setted_input=NULL;
	input_value=NULL;
	node_list=Make_node();

}
Node::~Node()
{

	if(instance_name){
		delete []instance_name;
		instance_name=NULL;
	}
	if(module_name){
		delete []module_name;
		module_name=NULL;
	}
	if(output_name){
		delete []output_name;
		output_name=NULL;
	}
	if(input_name){		
		delete []input_name;
		input_name=NULL;
	}
	if(setted_input){
		delete []setted_input;
		setted_input=NULL;
	}
	if(input_value){
		delete []input_value;
		input_value=NULL;
	}	
}
void Node::set_instance_name(string& name,int length)
{
	char* temp=const_cast<char*>(name.c_str());
	instance_name = new char[length+1];
	strcpy(instance_name,temp);
}
void Node::set_input_name(string& name, int num, int length)
{
	char* temp=const_cast<char*>(name.c_str());
	if(!number_of_input){
		number_of_input=num;
		input_name=new char*[number_of_input];			
	}
	input_name[input_index]=new char[length+1];
	strcpy(input_name[input_index++],temp);
}
void Node::set_output_name(string& name,int length)
{
	char* temp=const_cast<char*>(name.c_str());
	output_name = new char[length+1];	
	strcpy(output_name,temp);
}
void Node::set_module_name(string& name, int length)
{
	char* temp=const_cast<char*>(name.c_str());
	module_name = new char[length+1];
	strcpy(module_name,temp);
}

Node* Node::Make_node()
{
	int number_of_instance=Parser->instance_name.size();	
	int i,j=0;
	int k;
	Node* head=NULL;
	Node* temp=NULL;	

	for(i=0;i<number_of_instance;i++)
	{
		Node* new_node=new Node;		
		new_node->set_instance_name(Parser->instance_name[i],Parser->instance_name[i].length());
		new_node->set_module_name(Parser->instance_module_name[i],Parser->instance_module_name[i].length());
		new_node->set_output_name(Parser->interconnect_name[j],Parser->interconnect_name[j].length());
		j++;
		new_node->setted_input=new bool[Parser->number_of_port[i]-1];
		
		new_node->next=NULL;		
		new_node->input_value=new int[Parser->number_of_port[i]-1];
		for(k=0;k<Parser->number_of_port[i]-1;k++)
		{
			new_node->set_input_name(Parser->interconnect_name[j],Parser->number_of_port[i]-1,Parser->interconnect_name[j].length());
			j++;
			new_node->input_value[k]=-1;
			new_node->setted_input[k]=false;
		}
		if(!head){
			head=new_node;
			temp=head;
			head->Parser=Parser;
		}
		else{
			temp->next=new_node;
			temp=temp->next;
		}
	}
	temp->next=NULL;
	return head;

}
void Wire::set_name(string& _name,int length)
{
	char* temp=const_cast<char*>(_name.c_str());
	name=new char[length+1];
	strcpy(name,temp);
}
void Wire::set_name_except_bit(char* buf, int length)
{
	name_except_bit= new char[length+1];
	strcpy(name_except_bit, buf);
}

Wire* Wire::make_wire()
{
	int number_of_interconnect=Parser->interconnect_name.size();
	int number_of_module_input=Parser->input_port_name.size();
	int number_of_module_output=Parser->output_port_name.size();
	
	int i,j,wire_index=0;
	
	char* buf1=new char[FILE_LINE_SIZE];
	char* buf2=NULL;
	char* buf3=NULL;
	
	Wire* head=NULL;
	Wire* temp=NULL;
	Wire* temp2=NULL;
	Wire* prev_wire=NULL;

	bool temp_dead;
	for(i=0;i<number_of_interconnect;i++)
	{
		Wire* new_wire=new Wire; 
		new_wire->set_name(Parser->interconnect_name[wire_index],Parser->interconnect_name[wire_index].length());
		new_wire->next=NULL;
		new_wire->prev=NULL;
		strcpy(buf1,Parser->interconnect_name[wire_index++].c_str());
		buf2=strtok(buf1," ,[");
		buf3=strtok(NULL,"]");

		if(!strcmp(new_wire->name,"0"))
			new_wire->value=0;
		else if(!strcmp(new_wire->name,"1"))
			new_wire->value=1;

		
		for(j=0;j<number_of_module_input;j++)
		{
			if(!strcmp(buf2,Parser->input_port_name[j].c_str())){
				new_wire->type=1;
				if(buf2)
				new_wire->set_name_except_bit(buf2, strlen(buf2));
				if(buf3)
				new_wire->index=atoi(buf3);
				else
					new_wire->index=0;
				break;
			}
		}
		for(j=0;j<number_of_module_output;j++)
		{
			if(!strcmp(buf2,Parser->output_port_name[j].c_str())){
				new_wire->type=2;
				if(buf2)
				new_wire->set_name_except_bit(buf2, strlen(buf2));
				if(buf3)
				new_wire->index=atoi(buf3);
				else
					new_wire->index=0;
				break;
			}
		}
		if(!head){
			head=new_wire;
			temp=head;
		}
		else{
			new_wire->set_prev(temp);
			temp->set_next(new_wire);
			temp=temp->next;
		}
	}
	delete []buf2;
	buf2=NULL;
	buf1=NULL;
	Wire* tail=new Wire;	
	string _tail="tail";
	temp->next=tail;
	tail->prev=temp;
	tail->next=NULL;
	tail->value=-2;
	tail->set_name(_tail,4); 
	temp=head;
	
	while(temp->next)
	{
		temp2=temp;
		temp_dead=true;
		while(temp2=temp2->next)
		{
			if(temp2->value==-2)
				break;
			else if(!strcmp(temp2->name,temp->name)){
				temp2->prev->next=temp2->next;
				temp2=temp2->prev;
				//cout<<temp2->next->prev->name<<"is deleted!"<<endl;
				delete temp2->next->prev;
				temp2->next->prev=temp2;	
			}		
			else
			{
				temp_dead=false;
			}
		}
		temp=temp->next;
	}
	temp->prev->next=NULL;
	delete temp;
	temp=NULL;
	cout<<"wire and node complete!"<<endl;
	
	
	return head;
}