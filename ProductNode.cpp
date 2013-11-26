#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ProductNode.h"

ProductNode::~ProductNode(void)
{
	if(__pProduct)
		delete[] __pProduct;
}

ProductNode::ProductNode(ProductNode * p)
	:__pNext(NULL)
	,__pPre(NULL)
	,__ref(0)
{
	__size = p->__size;
	__pProduct = new unsigned char[__size];
	memcpy(__pProduct, p->__pProduct, __size);
}

ProductNode::ProductNode(unsigned int minterm, unsigned int size)
	:__pNext(NULL)
	,__pPre(NULL)
	,__ref(0)
{
	__size = size;
	setProduct(minterm);	
}

ProductNode::ProductNode(unsigned char * p, unsigned int size)
	:__pNext(NULL)
	,__pPre(NULL)
	,__ref(0)
{
	__pProduct = p;
	__size = size;
}


void ProductNode::setProduct(unsigned int n){
	__pProduct = new unsigned char[__size];

	for(unsigned int i=0 ; i<__size ; ++i){
		if(n&(1<<i))
			__pProduct[i] = '1';
		else
			__pProduct[i] = '0';
	}
}
