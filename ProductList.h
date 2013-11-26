#include "ProductNode.h"

#pragma once
class ProductList
{
public:
	ProductList(void):__pHead(NULL), __pTail(NULL), __length(0){};
	~ProductList(void);

private:
	ProductNode * __pHead;
	ProductNode * __pTail;
	unsigned int __length;

public:
	ProductNode * getHead(){return __pHead;}
	unsigned int getLength(){return __length;};

	void push_back(ProductNode * pNode);
	void deleteNode(ProductNode * pDel);
	void clear();
};

