#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "QuineMccluskey.h"

QuineMccluskey::QuineMccluskey(char * filename){
	Expression * quine = readFile(filename);
	quine->doQuineMccluskey();
	printExpression(filename, quine);
}

Expression * QuineMccluskey::readFile(char * filename){
	Expression * toret;
	int size;
	int tmp;
	FILE * fp;
	char buf[255];
	unsigned char * p;

	fp = fopen(filename, "r");
	fscanf(fp, "%s", buf);

	size = strlen(buf);
	toret = new Expression(size);
	p = new unsigned char[size];
	for(int i=0 ; i<size ; ++i)
		p[i] = buf[i];
	toret->insert(p);

	fscanf(fp, "%s", buf);

	while(fscanf(fp, "%s", buf) != EOF){
		p = new unsigned char[size];
		for(int i=0 ; i<size ; ++i)
			p[i] = buf[i];
		toret->insert(p);
		fscanf(fp, "%s", buf);
	}

	fclose(fp);

	return toret;
}

void QuineMccluskey::printExpression(char * filename, Expression * exp){
	FILE * fp;
	ProductNode * pHead = exp->getProductHead();
	unsigned int size = exp->getSize();

	fp = fopen(filename, "w");

	for( ; pHead ; pHead=pHead->getNext()){
		unsigned char * product = pHead->getProduct();
		for(int i=0 ; i<size ; ++i){
			printf("%c", product[i]);
			fprintf(fp, "%c", product[i]);
		}
		fprintf(fp, " 1\n");
		printf(" 1\n");
	}
	fprintf(fp, "\n");
	printf("\n");
	fclose(fp);
}

