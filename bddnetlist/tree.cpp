#include "include_list.h"

Tree::Tree(Node* node_list,Wire* wire_list)
{
	//this->node_list=new Node;
	this->node_list=node_list;
	//this->wire_list=new Wire;
	this->wire_list=wire_list;
	make_tree();
}
Tree::~Tree()
{
	Node* ntemp=NULL;
	Wire* wtemp=NULL;
	int i,num=node_list->get_parser()->instance_name.size();
	for(i=0;i<num;i++){		

		ntemp=node_list;
		node_list=node_list->get_next();
		delete ntemp;
		ntemp=NULL;

	}
	while(wire_list)
	{
		wtemp=wire_list;
		wire_list=wire_list->get_next();
		delete wtemp;
		wtemp=NULL;
	}


}
int Tree::function(char* name, int* value, int n_input)
{
	int i;
	int buf=0;
	if(!strcmp(name,"and"))
	{
		for(i=0;i<n_input;i++)
		{
			if(!value[i])
				return 0;
		}
		return 1;
	}
	else if(!strcmp(name,"or"))
	{
		for(i=0;i<n_input;i++)
		{
			if(value[i])
				return 1;
		}
		return 0;
	}
	else if(!strcmp(name,"not"))
	{
		if(value[0])
			return 0;
		else
			return 1;
	}
	else if(!strcmp(name,"assign"))
	{
		return value[0];
	}
	else if(!strcmp(name,"nand"))
	{
		for(i=0;i<n_input;i++)
		{
			if(!value[i])
				return 1;
		}
		return 0;
	}
	else if(!strcmp(name,"nor"))
	{
		for(i=0;i<n_input;i++)
		{
			if(value[i])
				return 0;
		}
		return 1;
	}
	else if(!strcmp(name,"xor"))
	{
		for(i=0;i<n_input;i++)
		{
			if(value[i])
				buf++;
		}
		if(buf%2)
			return 1;
		else 
			return 0;
	}
	else if(!strcmp(name,"xnor"))
	{
		for(i=0;i<n_input;i++)
		{
			if(value[i])
				buf++;
		}
		if(buf%2)
			return 0;
		else
			return 1;
	}
	else
		return 0;
}

Print::Print()
{
}
Print::~Print()
{
#ifdef OBJECT_OUTPUT
	for(int i=0;i<output_band;i++)	
		delete output[i];
#endif
	//delete []output;
	delete []one_count;
	delete []of_file;
}
Print::Print(Node* node)
{	
	int i,j,output_offset=0;
	char file_name[64];
	char dir_name[32];
	char** name=NULL;
	name=new char*[node->get_parser()->output_port_name.size()];
	for(i=0,output_band=0;i<node->get_parser()->output_port_name.size();i++)
	{
		name[i]=new char[256];
		strcpy(name[i],node->get_parser()->output_port_name[i].c_str());
		output_band+=node->get_parser()->output_port_bandwidth[i];
	}
	one_count=new int[output_band];
	for(i=0;i<output_band;i++)
		one_count[i]=0;

	sprintf(dir_name,"\%s_output",node->get_parser()->filename_net.c_str());
	//mkdir(dir_name);
	mkdir(dir_name, 0755);
#ifdef OBJECT_OUTPUT
	output = new int*[output_band];
	for(i=0;i<output_band;i++)
	{
		output[i]=new int[1<<19];
		for(j=0;j<(1<<19);j++)
			output[i][j]=-1;
	}
#endif
#ifndef OBJECT_OUTPUT
	of_file = new ofstream[output_band];
	//output = new int[node->get_parser()->input_port_bandwidth[0]];
	//for(i=0;i<output_band;i++)
	//{		
	//	for(j=0;j<node->get_parser()->input_port_bandwidth[0];j++)
	//		//output[i][j]=-1;
	//			output[j]=-1;
	//	sprintf(file_name,"./%s/%s_[%d].txt",dir_name,name[i],i);
	//	of_file[i].open(file_name);
	//}
	for(i=0;i<node->get_parser()->output_port_name.size();i++)
	{
		for(j=0;j<node->get_parser()->output_port_bandwidth[i];j++)
		{
			sprintf(file_name,"./%s/%s_[%d].txt",dir_name,name[i],j);
			if(i==0)
				of_file[j].open(file_name);
			else
				of_file[output_offset+j].open(file_name);
		}
		output_offset+=node->get_parser()->output_port_bandwidth[i];
	}
#endif

}

void Print::make_object(Wire* wire, Node* node,int* input_array)
{
	Wire* wire_temp;
	char *ch, *buf;
	buf=new char[FILE_LINE_SIZE];
	int input_offset=0;	
	int output_offset=0;
	int input_number=0;
	int i,j,index;	

	for(i=0;i<node->get_parser()->input_port_name.size();i++)
	{
		wire_temp=wire;
		while(wire_temp)
		{
			if(wire_temp->get_name_except_bit())
				if(!strcmp(node->get_parser()->input_port_name[i].c_str(),wire_temp->get_name_except_bit()) && wire_temp->get_value()==1)
				{					
					if(i==0)
						input_number+=1<<(wire_temp->get_index());					
					else
						input_number+=1<<(wire_temp->get_index()+input_offset);					
				}
				wire_temp=wire_temp->get_next();
		}
		input_offset+=node->get_parser()->input_port_bandwidth[i];		
	}

	if(input_number%1000==0)
		cout<<"input_number: "<<input_number<<endl;
	
	for(i=0;i<node->get_parser()->output_port_name.size();i++)
	{
		for(j=0;j<node->get_parser()->output_port_bandwidth[i];j++)
		{
			wire_temp=wire;
			while(wire_temp)
			{
				if(wire_temp->get_name_except_bit())
					if(!strcmp(wire_temp->get_name_except_bit(),node->get_parser()->output_port_name[i].c_str()) && wire_temp->get_value()==1 && wire_temp->get_index()==j)
					{
						if(i==0){
							//of_file[j]<<setw(2)<<input_number;
							one_count[j]++;							
							for(int k=0;k<input_offset;k++)
								of_file[j]<<input_array[k];
							of_file[j]<<endl;
							if(input_number==(1<<(input_offset)-1))
								of_file[j]<<"count = "<<one_count[j]<<endl;
						}
						else{
							//of_file[j+output_offset]<<setw(2)<<input_number;
							one_count[j+output_offset]++;							
							for(int k=0;k<input_offset;k++)
								of_file[j+output_offset]<<input_array[k];
							of_file[j+output_offset]<<endl;
							if(input_number==(1<<(input_offset)-1))
								of_file[j+output_offset]<<"count = "<<one_count[j+output_offset]<<endl;
						}						
					}
				wire_temp=wire_temp->get_next();
			}
		}
		output_offset+=node->get_parser()->output_port_bandwidth[i];		
	}
	delete []buf;
	buf=NULL;
	
}
void set_arr(int* arr,int _val, int size)
{
	int val=_val;
	for(int i=0;i<size;i++)
	{
		arr[i]=val%2;
		val=val/2;
	}
}

int get_arr(int* arr,int n){return arr[n];}

void Tree::make_tree()
{
	int i,j;
	int setted_input;	
	int number_of_nodes=node_list->get_parser()->instance_name.size();
	int completed_nodes;
	int *input_array,array_size,array_index;
	int input_to_decimal,addr;
	bool cycled=false;
	char* ch,*buf;
	int total_input_bandwidth=0;

	buf=new char[FILE_LINE_SIZE];
	Node* node_temp=node_list;
	Wire* wire_temp=wire_list;

	Print print(node_temp);
	
	for(i=0;i<node_list->get_parser()->input_port_name.size();i++)
		total_input_bandwidth+=node_list->get_parser()->input_port_bandwidth[i];
	
	array_size=total_input_bandwidth;
	input_array=new int[array_size];
	array_index=array_size;
	for(input_to_decimal=0;input_to_decimal<pow(2,total_input_bandwidth)/*(1<<total_input_bandwidth)*/;input_to_decimal++)
	{
		set_arr(input_array,input_to_decimal,array_size);
		array_index=0;
		wire_temp=wire_list;		
		for(i=0;i<node_list->get_parser()->input_port_name.size();i++)
		{			
			wire_temp=wire_list;
			while(wire_temp)
			{
				if(wire_temp->get_type()==1 && !strcmp(wire_temp->get_name_except_bit(),node_list->get_parser()->input_port_name[i].c_str()))
				{					
					for(j=0;j<node_list->get_parser()->input_port_bandwidth[i];j++)
					{
						if(wire_temp->get_index()==j)
						{
							wire_temp->set_value(get_arr(input_array,j+array_index));							
							break;
						}
					}
				}
				wire_temp=wire_temp->get_next();
			}
			array_index+=node_list->get_parser()->input_port_bandwidth[i];
		}
		completed_nodes=0;
		while(1)
		{		
			for(i=0;i<node_temp->get_number_of_input();i++)
			{
				if(node_temp->get_setted_input()[i])
					continue;
				wire_temp=wire_list;
				while(wire_temp)
				{					
					if(!strcmp(node_temp->get_input_name()[i],wire_temp->get_name()) && wire_temp->get_value()!=-1)
					{						
						node_temp->set_setted_input(true,i);
						node_temp->input_value[i]=wire_temp->get_value();
						break;
					}
					wire_temp=wire_temp->get_next();
				}
			}
			setted_input=0;
			for(i=0;i<node_temp->get_number_of_input();i++){
				if(node_temp->get_setted_input()[i])
					setted_input++;
			}			
			if(i==setted_input){
				wire_temp=wire_list;
				while(wire_temp)
				{
					if(!strcmp(node_temp->get_output_name(),wire_temp->get_name())){
						wire_temp->set_value(function(node_temp->get_module_name(),node_temp->input_value,node_temp->get_number_of_input()));
						break;
					}
					wire_temp=wire_temp->get_next();
				}
				completed_nodes++;
				node_temp->set_all_input_setted(true);
			}
			if(number_of_nodes==completed_nodes)
				break;
			if(!node_temp->get_next()){
				node_temp->set_next(node_list);				
				//cout<<"cycled"<<endl;
			}

			node_temp=node_temp->get_next();
			while(node_temp->get_all_input_setted())
			{
				node_temp=node_temp->get_next();				
			}
			
		}
		wire_temp=wire_list;
		node_temp=node_list;
		print.make_object(wire_temp,node_temp,input_array);
		wire_temp=wire_list;
		while(wire_temp)
		{
			if(!strcmp(wire_temp->get_name(),"0"))
				wire_temp->set_value(0);
			else if(!strcmp(wire_temp->get_name(),"1"))
				wire_temp->set_value(1);
			else
				wire_temp->set_value(-1);
			wire_temp=wire_temp->get_next();
		}
		node_temp=node_list;
		
		for(i=0;i<number_of_nodes;i++)
		{
			for(j=0;j<node_temp->get_number_of_input();j++)
			{
				node_temp->set_setted_input(false,j);				
			}
			node_temp->set_all_input_setted(false);
			node_temp=node_temp->get_next();
		}

	}
	delete []buf;
	delete []input_array;
}
