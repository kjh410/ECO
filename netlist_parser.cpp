#include "netlist_parser.h"

netlist_parser::netlist_parser(char * fn_net){
	if_net.open(fn_net);

	if(if_net.fail() == true)
	{				
		cout<<"File Open Error! File Name : "<<filename_net.c_str()<<endl;
		exit(0);
	}
	//filename_net = strchr(fn_net,'g');
	//filename_net = strchr(fn_net, 'e');
	the_num_of_assign=0;
	parser();
}
netlist_parser::netlist_parser()
{}
netlist_parser::~netlist_parser(){
	//deque clear
	input_port_name.clear();
	input_port_bandwidth.clear();
	output_port_name.clear();
	output_port_bandwidth.clear();
	wire_port_name.clear();
	wire_port_bandwidth.clear();
	instance_module_name.clear();
	instance_name.clear();
	number_of_port.clear();
	interconnect_name.clear();
}



void netlist_parser::parser(){
	
	/*if_net.open(filename_net.c_str());
	if(if_net.fail()){				
		cout<<"File Open Error! File Name : "<<filename_net.c_str()<<endl;
		exit(0);
	}*/
			
	char * buf				= new char[FILE_LINE_SIZE];
	char * port_name		= new char[FILE_LINE_SIZE];
	char * inst_name		= new char[FILE_LINE_SIZE];
	char * temp				= new char[FILE_LINE_SIZE];
	char * ch, * ch1, *semi;
	int msb, lsb, bandwidth;
	int port_num;
	string copy;
	bool EndOfLine=false;
	

	deque<string>	*	p_port_name;
	deque<int>		*	p_port_bandwidth;

	while(if_net.getline(buf, FILE_LINE_SIZE)){
		copy=buf;		
		ch = strtok(buf, " \t\n");
		if(ch==0)continue;
		if(copy[copy.size()-1]==';')	EndOfLine = true;
		else							EndOfLine = false;

		//////////////////////////////////////////////////////////////////
		// file에 module이 나타날 경우
		//////////////////////////////////////////////////////////////////
		if(!strcmp(ch, "module")){
			ch = strtok(NULL, " \t\n(");
			module_name=ch;			
			while(!EndOfLine){
				if_net.getline(buf, FILE_LINE_SIZE);
				copy=buf;
				ch=strtok(buf, " \t\n");
				if(ch==0)continue;
				if(copy[copy.size()-1]==';')	EndOfLine = true;
				else							EndOfLine = false;
			}
		}
		//////////////////////////////////////////////////////////////////
		// file에 input/output/wire가 나타날 경우
		//////////////////////////////////////////////////////////////////
		else if((!strcmp(ch, "input"))||(!strcmp(ch, "output"))||(!strcmp(ch,"wire"))){
			//pointer setting among input/output/wire
			if(!strcmp(ch, "input")){
				p_port_name = &input_port_name;
				p_port_bandwidth = &input_port_bandwidth;
			}
			else if(!strcmp(ch, "output")){
				p_port_name = &output_port_name;
				p_port_bandwidth = &output_port_bandwidth;
			}
			else if(!strcmp(ch, "wire")){
				p_port_name = &wire_port_name;
				p_port_bandwidth = &wire_port_bandwidth;
			}
			ch = strtok(NULL, " \t\n");
			strcpy(temp, ch);			
			if(temp[0] == '['){
				//port가 여러개 일때 이를 저장한다.
				port_num=0;
				while((ch = strtok(NULL, " [:],;\t\n"))!=0){
					strcpy(port_name, ch);
					(*p_port_name).push_back(port_name);
					port_num++;
				}
				//line이 길어서 다음 line으로 넘어갔을 경우
				while(!EndOfLine){
					if_net.getline(buf, FILE_LINE_SIZE);
					//while(if_net.getline(buf, FILE_LINE_SIZE))
					copy=buf;		
					ch = strtok(buf, " ,;\t\n");
					if(ch==0)continue;
					if(copy[copy.size()-1]==';')	EndOfLine = true;
					else							EndOfLine = false;
					strcpy(port_name, ch);
					(*p_port_name).push_back(port_name);
					port_num++;
					while((ch=strtok(NULL," ,;\t\n"))!=0){
						strcpy(port_name, ch);
						(*p_port_name).push_back(port_name);
						port_num++;
					}
				}

				//bandwidth calculation
				ch1 = strtok(temp, " [:]");
				msb = atoi(ch1);
				ch1 = strtok(NULL, " [:]");
				lsb = atoi(ch1);
				if(msb>lsb)	bandwidth = msb-lsb+1;
				else		bandwidth = lsb-msb+1;
				while((port_num--)!=0)(*p_port_bandwidth).push_back(bandwidth);
			}
			else{
				port_num=1;
				//temp에 첫이름이 저장되어 있음				
				if((semi=strchr(temp, ','))!=0){
					temp[semi-temp]=0;
					strcpy(port_name, temp);
					(*p_port_name).push_back(port_name);					
				}
				else if((semi=strchr(temp, ';'))!=0){
					temp[semi-temp]=0;
					strcpy(port_name, temp);
					(*p_port_name).push_back(port_name);					
				}
				else{//0904
					strcpy(port_name, temp);
					(*p_port_name).push_back(port_name);
				}
				while((ch = strtok(NULL, " [:],;\t\n"))!=0){			
					strcpy(port_name, ch);
					(*p_port_name).push_back(port_name);
					port_num++;
				}
				while(!EndOfLine){
					if_net.getline(buf, FILE_LINE_SIZE);
					copy=buf;
					ch=strtok(buf, " ,;\t\n");
					if(ch==0) continue;
					if(copy[copy.size()-1]==';')	EndOfLine = true;
					else							EndOfLine = false;
					strcpy(port_name, ch);
					(*p_port_name).push_back(port_name);
					port_num++;
					while((ch=strtok(NULL, " ,;\t\n"))!=0){
						strcpy(port_name, ch);
						(*p_port_name).push_back(port_name);
						port_num++;
					}
				}
				while((port_num--)!=0)(*p_port_bandwidth).push_back(1);
			}
		}

		//////////////////////////////////////////////////////////////////
		// file에 endmodule이 나타날 경우
		//////////////////////////////////////////////////////////////////
		else if(!strcmp(ch, "endmodule")){
			//print netlist information
			print_parsing_netlist_info();
			//////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////
			//여기에서 node 생성기를 호출하면 됨
			//////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////

			//deque clear
			/*input_port_name.clear();
			input_port_bandwidth.clear();
			output_port_name.clear();
			output_port_bandwidth.clear();
			wire_port_name.clear();
			wire_port_bandwidth.clear();
			instance_module_name.clear();
			instance_name.clear();
			number_of_port.clear();
			interconnect_name.clear();*/
		}

		//////////////////////////////////////////////////////////////////
		// file에 주석이 나타날 경우, 아무일도 하지 않음
		//////////////////////////////////////////////////////////////////
		else if((!strcmp(ch, "//"))){		

		}

		//////////////////////////////////////////////////////////////////
		// (ICCAD) netlist의 경우, assign이 되는 경우 처리해야함
		//////////////////////////////////////////////////////////////////
		else if((!strcmp(ch, "assign"))){		
			char temp_str[256];
			strcpy(inst_name, ch);
			instance_module_name.push_back(inst_name);
			sprintf(temp_str,"buffer[%d]",the_num_of_assign);
			instance_name.push_back(temp_str);
			port_num=0;
			while((ch=strtok(NULL, " .(,);=\t\n"))!=0){
				if(strstr(ch,"'")!=0){
					strtok(ch,"'b");
					strcpy(inst_name,strtok(NULL,"'b"));
				}
				else{
					strcpy(inst_name, ch);
				}
				port_num++;
				interconnect_name.push_back(inst_name);
			}
			//0824
			//input_port_name.push_back(inst_name);
			//input_port_bandwidth.push_back(1);
			//0824
			number_of_port.push_back(port_num);
			the_num_of_assign++;
		}

		//////////////////////////////////////////////////////////////////
		// file에 instance할 module name이 나타날 경우
		// netlist의 경우, module-input-output-wire-instnace-endmodule 순으로 구현됨
		// (ICCAD) netlist file의 경우, ordered mapping을 수행함.
		//////////////////////////////////////////////////////////////////		
		else{
			strcpy(inst_name, ch);
			instance_module_name.push_back(inst_name);
			ch = strtok(NULL," (,).;\t\n");
			strcpy(inst_name, ch);
			instance_name.push_back(inst_name);
			port_num=0;
			while((ch=strtok(NULL, " .(,);\t\n"))!=0){
				strcpy(inst_name, ch);
				port_num++;
				interconnect_name.push_back(inst_name);
			}
			while(!EndOfLine){
				if_net.getline(buf, FILE_LINE_SIZE);
				copy=buf;
				ch=strtok(buf, " .(,);\t\n");
				if(ch==0)break;
				if(copy[copy.size()-1]==';')	EndOfLine = true;
				else							EndOfLine = false;
				strcpy(inst_name, ch);
				port_num++;										
				interconnect_name.push_back(inst_name);

				while((ch=strtok(NULL," .(,);\t\n"))!=0){
					strcpy(inst_name, ch);
					port_num++;
					interconnect_name.push_back(inst_name);
				}
			}
			number_of_port.push_back(port_num);
		}

		
	}		

}


void netlist_parser::print_parsing_netlist_info(){
	char filename[256];
	
	sprintf(filename,"%s_netlist_info.txt", filename_net.c_str());	
	of_net.open(filename);
	if(of_net.fail()){
		cout<<"File Open Error! File Name : "<<filename<<endl;
		exit(0);
	}
	of_net<<"======================================================================================================"<<endl;
	of_net<<"=                                    Netlist Information                                             ="<<endl;
	of_net<<"======================================================================================================"<<endl;
	of_net<<"File name   : "<<filename_net.c_str()<<endl;
	of_net<<"Module name : "<<module_name.c_str()<<endl;
	of_net<<"======================================================================================================"<<endl;
	of_net<<"Input port information (port name, bandwidth)"<<endl;
	if(input_port_bandwidth.size()==input_port_name.size()){
		for(int i=0; i<input_port_bandwidth.size(); i++){
			of_net<<"("<<input_port_name[i].c_str()<<", "<<input_port_bandwidth[i]<<") ";
			if((i%5==0)&&(i!=0))of_net<<endl;
		}
		of_net<<endl;
	}
	else{
		cout<<"Input port parsing error : "<<filename_net.c_str()<<endl;
		exit(0);
	}
	of_net<<"======================================================================================================"<<endl;
	of_net<<"Output port information (port name, bandwidth)"<<endl;
	if(output_port_bandwidth.size()==output_port_name.size()){
		for(int i=0; i<output_port_bandwidth.size(); i++){
			of_net<<"("<<output_port_name[i].c_str()<<", "<<output_port_bandwidth[i]<<") ";
			if((i%5==0)&&(i!=0))of_net<<endl;
		}
		of_net<<endl;
	}
	else{
		cout<<"Output port parsing error : "<<filename_net.c_str()<<endl;
		exit(0);
	}
	of_net<<"======================================================================================================"<<endl;
	of_net<<"Wire port information (port name, bandwidth)"<<endl;
	if(wire_port_bandwidth.size()==wire_port_name.size()){
		for(int i=0; i<wire_port_bandwidth.size(); i++){
			of_net<<"("<<wire_port_name[i].c_str()<<", "<<wire_port_bandwidth[i]<<") ";
			if((i%5==0)&&(i!=0))of_net<<endl;
		}
		of_net<<endl;
	}
	else{
		cout<<"Wire port parsing error : "<<filename_net.c_str()<<endl;
		exit(0);
	}
	of_net<<"======================================================================================================"<<endl;
	of_net<<"Instance information (module name, instance name, ports number, port name1, port name2, ...)"<<endl;
	if(instance_module_name.size()==instance_name.size()){
		int cnt=0;
		for(int i=0; i<instance_module_name.size();i++){
			of_net<<"("<<instance_module_name[i].c_str()<<", "<<instance_name[i].c_str()<<", "<<number_of_port[i]<<", ";
			for(int j=0; j<number_of_port[i]; j++){
				of_net<<interconnect_name[cnt].c_str();
				cnt++;
				if(j!=number_of_port[i]-1)of_net<<", ";
			}
			
			of_net<<")"<<endl;
		}
	}
	else{
		cout<<"Instance parsing error: "<<filename_net.c_str()<<endl;
		exit(0);
	}


	
	of_net<<"======================================================================================================"<<endl;
	of_net.close();


}

void netlist_parser :: clear_data(){
		input_port_name.clear();
		input_port_bandwidth.clear();
		output_port_name.clear();
		output_port_bandwidth.clear();
		wire_port_name.clear();
		wire_port_bandwidth.clear();
		instance_module_name.clear();
		instance_name.clear();
		number_of_port.clear();
		interconnect_name.clear();
}

