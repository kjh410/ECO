#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ProductList.h"


ProductList::~ProductList(void)
{
	
}


void ProductList::deleteNode(ProductNode * pDel){
	if(pDel == __pHead){
		__pHead = pDel->getNext();
		if(__pHead)
			__pHead->setPre(NULL);
	}
	else{
		pDel->getPre()->setNext(pDel->getNext());
	}

	if(pDel == __pTail)
		__pTail = pDel->getPre();

	delete pDel;
	--__length;
}

void ProductList::push_back(ProductNode * pNode){
	if(__pTail == NULL)
		__pHead = __pTail = pNode;
	else{
		__pTail->setNext(pNode);
		pNode->setPre(__pTail);
		__pTail = pNode;
	}
	++__length;
}

void ProductList::clear(){
	ProductNode * pNext, * pHorse;

	for(pHorse = __pHead ; pHorse ; pHorse = pNext){
		pNext = pHorse->getNext();
		delete pHorse;
	}
	__length = 0;
}
