#include "ProductList.h"

#pragma once
class Expression
{
public:
	Expression(void):__pProductList(NULL),__size(0){}
	Expression(unsigned int size);
	~Expression(void);

private:
	ProductList * __pProductList;
	unsigned int __size;

public:
	void insert(unsigned int n);
	void insert(unsigned char * p);
	void doQuineMccluskey();
	unsigned char * determineAndGetNewCharArr(unsigned char * a, unsigned char * b);
	/* dif 1 - return new chararr
	   dif 0 - return NULL
	   else  - return a */

	unsigned int getSize(){return __size;}
	ProductNode * getProductHead(){return __pProductList->getHead();}
};

