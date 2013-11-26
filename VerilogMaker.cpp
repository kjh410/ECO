#include "include_list.h"
#include "cudd.h"
#include "util.h"
#include "VerilogMaker.h"
#include <math.h>

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
void VerilogMaker::Function(char** outputName,int diff_output,char** inputName,int total_input)
{
	int i,j;
	netlist_parser* list=Node_list->get_parser();
	int n_output=list->output_port_name.size();
	int n_input=list->input_port_name.size();
	int n_wire=list->wire_port_name.size();
	int width,prev_width=0;
	bool isfirst=true;
	bool isassign=false;
	Node* head=Node_list;
	Node* temp;
	char** Input_name=NULL;
	char buf;
	char * path = new char[64];
	int index=0,wire_index=0;
	bool isspace,isreplace;
	int n_input_of_sum,stacked_wire=0;
	int* n_sop_line,**n_sop_minterm;
	int input_exponential = pow(2,total_input);
	int tmp_minterm_cnt[65536];
	bool not_gate[total_input];
	int total_gate_size=0;
	int eco_gate_size=0;
	int cnt=0;
	for(i=0;i<total_input;i++)
		not_gate[i]=false;

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

	of_net<<";"<<endl;
	printf("input,output,wire complete\n");
	n_sop_line = new int[diff_output];
	n_sop_minterm = new int*[diff_output];
	of_net<<"	wire ";
	for(i=0;i<diff_output;i++){
		j=0;
		of_net<<"sub_wire"<<i<<", ";	
		n_sop_line[i]=-1;		
		sprintf(path,"./sop/%s.sop",outputName[i]);
		sop.open(path);
		while(!sop.eof()){
			tmp_minterm_cnt[j]=0;
			while((buf=sop.get())!=' '){
			//while(buf=sop.get()){
				//if(total_input==cnt)
				//	break;
				if(buf=='\n')
					break;
				else if(buf!='-')
					tmp_minterm_cnt[j]+=1;
			}			
			n_sop_line[i]+=1;
			if(buf!='\n')
				of_net<<"w_eco"<<wire_index++<<", ";
			sop.ignore(256,'\n');
			j+=1;
		}
		n_sop_minterm[i] = new int[n_sop_line[i]];

		for(j=0;j<n_sop_line[i];j++){
			n_sop_minterm[i][j] = tmp_minterm_cnt[j];
		}
		sop.close();
		if(n_sop_line[i]!=1)
			of_net<<"w_eco"<<wire_index++<<", ";
	}
	of_net.seekp(-2,ios::cur);
	of_net<<";"<<endl<<endl;
	printf("eco_wire complete\n");
	for(temp=Node_list;temp;temp=temp->get_next()){
		isreplace=false;
		Input_name=temp->get_input_name();
		if(!strcmp(temp->get_module_name(),"assign")){
			total_gate_size++;
			of_net<<"	assign ";
			for(j=0;j<diff_output;j++){
				if(!strcmp(temp->get_output_name(),outputName[j])){
					isreplace=true;
					break;
				}
			}
			if(isreplace)
				of_net<<"sub_wire"<<j;
			else 
				of_net<<temp->get_output_name();
			of_net<<" = "<<temp->get_input_name()[0]<<";"<<endl;
		}
		else{
		/*	if(!strcmp(temp->get_module_name(),"nand") || !strcmp(temp->get_module_name(),"nor"))
			{
				total_gate_size+=6;
			}
			else if(!strcmp(temp->get_module_name(),"not"))
			{	
				total_gate_size+=2;
			}
			else if(!strcmp(temp->get_module_name(),"xnor"))
			{
				total_gate_size+=8;
			}
			else
			{
				total_gate_size+=8;
			}
		*/	
			if(!strcmp(temp->get_module_name(),"xor") || !strcmp(temp->get_module_name(),"xnor"))
				total_gate_size+=2;	
			total_gate_size++;
			of_net<<"	"<<temp->get_module_name();
			of_net<<" "<<temp->get_instance_name();
			for(j=0;j<diff_output;j++){
				if(!strcmp(temp->get_output_name(),outputName[j])){
					isreplace=true;
					break;
				}
			}
			if(isreplace)
				of_net<<"(sub_wire"<<j<<", ";
			else
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

	wire_index=0;
	for(i=0;i<diff_output;i++){
		n_input_of_sum = 0;
		sprintf(path,"./sop/%s.sop",outputName[i]);
		sop.open(path);
		j=0;
		while(!sop.eof()){
			index=0;
			isassign=false;
			while((buf=sop.get())!=' '){
			//while(buf=sop.get()){
				/*if(total_input==index)
					break;*/
				isspace=false;
				if(buf=='\n')
					break;
				if(n_sop_minterm[i][j]==0 && !index)
				{
					of_net<<"	assign w_eco"<<wire_index<<" = 1'b1  ";
					wire_index++;
					isassign=true;
				}
				else if(n_sop_minterm[i][j]==1 && !index)
				{
					of_net<<"	assign w_eco"<<wire_index<<" = ";
					wire_index++;
					n_input_of_sum++;
					isassign=true;
				}
				else if(!index){	
					eco_gate_size++;
					of_net<<"	and _ECO_"<<wire_index<<"(w_eco"<<wire_index<<", ";
					wire_index++;
					n_input_of_sum++;
				}
				if(buf=='1')
					of_net<<inputName[index++];
				else if(buf=='0')	
				{	
					if(!not_gate[index]){
						not_gate[index]=true;
						//eco_gate_size++;
					}
					of_net<<"!"<<inputName[index++];
				}
				else{
					index++;
					isspace=true;
				}
				if(index==total_input){
					if(isspace)
						of_net.seekp(-2,ios::cur);
					if(isassign){
						of_net<<";"<<endl;
						
					}
					else{
						of_net<<");"<<endl;
						break;
					}				
				}
				else if(buf!='-')
					of_net<<", ";
				else{}
			}
			++j;
			sop.ignore(256,'\n');
		}
		sop.close();
		if(n_input_of_sum>1){			
			eco_gate_size++;
			of_net<<"	or _ECO_"<<wire_index<<"(w_eco"<<wire_index<<", ";
			for(int j=0;j<n_input_of_sum;j++){
				of_net<<"w_eco"<<j+stacked_wire;
				if((j+1)!=n_input_of_sum)
					of_net<<", ";
				else
					of_net<<");"<<endl;
			}
			wire_index++;
		}
		eco_gate_size++;
		of_net<<"	xor _ECO_out"<<i<<"("<<outputName[i]<<", sub_wire"<<i<<", w_eco"<<(wire_index-1)<<");"<<endl;
		stacked_wire=wire_index;
	}
	of_net<<endl<<"endmodule";
	
	of_net.close();
	cout<<"Total gate size : "<<total_gate_size<<endl;
	cout<<"ECO gate size : "<<eco_gate_size<<endl;
		
}
VerilogMaker::~VerilogMaker()
{
	delete filename;
}
