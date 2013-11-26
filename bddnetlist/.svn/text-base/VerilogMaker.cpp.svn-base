#include "include_list.h"
#include "cudd.h"
#include "util.h"
#include "VerilogMaker.h"

VerilogMaker::VerilogMaker()
{
}
VerilogMaker::VerilogMaker(Node* list, char* _filename)
{
	Node_list=list;
	int len=strlen(_filename);
	filename=new char[len+1];
	strcpy(filename,_filename);
}
void VerilogMaker::Function()
{
	int i;
	netlist_parser* list=Node_list->get_parser();
	int n_output=list->output_port_name.size();
	int n_input=list->input_port_name.size();
	int n_wire=list->wire_port_name.size();
	int width,prev_width=0;
	bool isfirst=true;
	Node* head=Node_list;
	Node* temp;
	char** Input_name=NULL;
	strcat(filename,".v");
	of_net.open(filename);
	of_net<<"module "<<list->module_name<<"(";
	for(i=0;i<n_output;i++){
		of_net<<list->output_port_name[i]<<",";
	}
	for(i=0;i<n_input;i++){
		of_net<<list->input_port_name[i];
		if(n_input-1!=i)
			of_net<<",";
		else
			of_net<<");"<<endl;

	}
	of_net<<"	input ";
	for(i=0;i<n_input;i++){
		width=list->input_port_bandwidth[i];
		if(width>1 && isfirst){
			of_net<<"["<<list->input_port_bandwidth[i]-1<<":0]";
		}
		isfirst=false;
		if(prev_width==0){
			of_net<<list->input_port_name[i];
			prev_width=width;
		}
		else if(prev_width==width){
			of_net<<", "<<list->input_port_name[i];
			prev_width=width;
		}
		else{
			of_net<<";"<<endl;
			of_net<<"	input ";			
			if(width>1){
				of_net<<"["<<list->input_port_bandwidth[i]-1<<":0]";
			}
			of_net<<list->input_port_name[i];
			prev_width=width;
		}
	}
	of_net<<";"<<endl;
	prev_width=0;
	isfirst=true;
	of_net<<"	output ";
	for(i=0;i<n_output;i++){
		width=list->output_port_bandwidth[i];
		if(width>1 && isfirst){
			of_net<<"["<<list->output_port_bandwidth[i]-1<<":0]";		
		}
		isfirst=false;
		if(prev_width==0){
			of_net<<list->output_port_name[i];
			prev_width=width;
		}
		else if(prev_width==width){
			of_net<<", "<<list->output_port_name[i];
			prev_width=width;
		}
		else{
			of_net<<";"<<endl;
			of_net<<"	output ";			
			if(width>1){
				of_net<<"["<<list->output_port_bandwidth[i]-1<<":0]";
			}
			of_net<<list->output_port_name[i];
			prev_width=width;
		}
	}
	of_net<<";"<<endl;					
	prev_width=0;
	isfirst=true;
	of_net<<"	wire ";
	for(i=0;i<n_wire;i++){
		width=list->wire_port_bandwidth[i];
		if(width>1 && isfirst){
			of_net<<"["<<list->wire_port_bandwidth[i]-1<<":0]";		
		}
		isfirst=false;
		if(prev_width==0){
			of_net<<list->wire_port_name[i];
			prev_width=width;
		}
		else if(prev_width==width){
			of_net<<", "<<list->wire_port_name[i];
			prev_width=width;
		}
		else{
			of_net<<";"<<endl;
			of_net<<"	wire ";			
			if(width>1){
				of_net<<"["<<list->wire_port_bandwidth[i]-1<<":0]";
			}
			of_net<<list->wire_port_name[i];
			prev_width=width;
		}
	}
	of_net<<";"<<endl<<endl;
	
	for(temp=Node_list;temp;temp=temp->get_next()){
		Input_name=temp->get_input_name();
		if(!strcmp(temp->get_module_name(),"assign")){
			of_net<<"	assign ";
			of_net<<temp->get_output_name()<<" = "<<temp->get_input_name()[0]<<";"<<endl;
		}
		else{
			of_net<<"	"<<temp->get_module_name();
			of_net<<" "<<temp->get_instance_name();
			of_net<<"("<<temp->get_output_name()<<", ";
			for(i=0;i<temp->get_number_of_input();i++){
				of_net<<Input_name[i];
				if(temp->get_number_of_input()-1==i)
					of_net<<");"<<endl;
				else
					of_net<<", ";
			}
		}
	}
	of_net<<endl<<"endmodule";
	of_net.close();
		
}
VerilogMaker::~VerilogMaker()
{
	delete filename;
}
