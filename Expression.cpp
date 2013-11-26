#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "Expression.h"


Expression::~Expression(void)
{
	delete __pProductList;
}


Expression::Expression(unsigned int size){
	__pProductList = new ProductList();
	__size = size;
}

void Expression::insert(unsigned int n){
	__pProductList->push_back(new ProductNode(n, __size));
}

void Expression::insert(unsigned char * p){
	__pProductList->push_back(new ProductNode(p, __size));
}

unsigned char * Expression::determineAndGetNewCharArr(unsigned char * a, unsigned char * b){
	unsigned int cnt = 0;
	int index = -1;
	for(unsigned int i=0 ; i<__size ; ++i){
		if(a[i] != b[i]){
			++cnt;
			index = i;
			if(cnt>1){
				return a;
			}
		}
	}

	if(index>=0){
		unsigned char * toret = new unsigned char[__size];
		//memcpy(toret, a, sizeof(unsigned char)*__size);
		memcpy(toret, a, __size);
		toret[index] = '-';

		return toret;
	}else{ // same
		return NULL;
	}
}

void Expression::doQuineMccluskey(){
	ProductNode * pi, * pj;
	ProductList * pNewList;

	for(;;){
		pNewList = new ProductList();
		unsigned int lengthdif = __pProductList->getLength();
		for(pi = __pProductList->getHead() ; pi ; ){
			for(pj = __pProductList->getHead() ; pj ; pj=pj->getNext()){
				if(pi != pj){
					unsigned char * piproduct = pi->getProduct();
					unsigned char * newitem = determineAndGetNewCharArr(piproduct, pj->getProduct());
					if(newitem != piproduct){
						if(newitem == NULL){
							ProductNode * pTmp = pj->getPre();
							__pProductList->deleteNode(pj);
							pj = pTmp;
						}
						else{
							pNewList->push_back(new ProductNode(newitem, __size));
							pi->ref();
							pj->ref();
						}
					}
				}
			}
			if(pi->getRefCount() == 0){
				pNewList->push_back(new ProductNode(pi));
			}
			ProductNode * pTmp = pi->getNext();
			__pProductList->deleteNode(pi);
			pi = pTmp;
		}
		lengthdif -= pNewList->getLength();
		__pProductList->clear();
		delete __pProductList;
		__pProductList = pNewList;
		
		if(!lengthdif)
			break;
	}
}
