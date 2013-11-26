#include "include_list.h"
//#include"netlist_parser.h"
//#include"tree.h"
#include "cudd.h"
#include "util.h"
#include "BddBuilder.h"
#include "VerilogMaker.h"

void fun(char*& ch);

int main(void)
{
	char input_dir_name0[128];
	char input_dir_name1[128];
	char* num0=new char[3];
	char* num1=new char[3];
	
	cout<<"select number(circuit A): ";
	cin>>num0;
	cout<<"select number(circuit B): ";
	cin>>num1;
	//sprintf(input_dir_name0,"./test file/cadContest2012_ECO_test%s/g1.v",num0);
	sprintf(input_dir_name0, "./testfile/ex%s.v", num0);
	netlist_parser parser1(input_dir_name0);
	Node node1(parser1);
	Wire wire1(parser1);
	BddBuilder * bddBuilder0 = new BddBuilder();
	bddBuilder0->construct(wire1.list(), node1.list());
	bddBuilder0->dotDump();
	VerilogMaker* Maker=new VerilogMaker(node1.list(),"g1");
	Maker->Function();
	sprintf(input_dir_name1, "./testfile/ex%s.v", num1);
	netlist_parser parser2(input_dir_name1);
	Node node2(parser2);
	Wire wire2(parser2);
	BddBuilder * bddBuilder1 = new BddBuilder(bddBuilder0);
	bddBuilder1->constructB(bddBuilder0, wire2.list(), node2.list());
	bddBuilder1->dotDump();

	DdNode ** xordlist = bddBuilder0->getXORdNodeList(bddBuilder1);
	bddBuilder0->dotDumpC(xordlist);

	DdNode ** xordA = bddBuilder0->getXORdNodeList(xordlist);	
	//bddBuilder0->dotDumpC(xordA);
	
	if(bddBuilder1->checkEquality(xordA) == 0)
		printf("Equality check succeed.\n");



	delete Maker;
	delete []xordA;
	delete []xordlist;
	delete bddBuilder0;
	delete bddBuilder1;
	delete []num0;
	delete []num1;
	return 0;
}
