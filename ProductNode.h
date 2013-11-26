#pragma once
class ProductNode
{
public:
	ProductNode(void):__pProduct(0),__pNext(0),__pPre(0),__size(0){}
	~ProductNode(void);

private:
	unsigned char * __pProduct;
	unsigned int __size;
	ProductNode * __pNext;
	ProductNode * __pPre;
	void setPopCount();
	unsigned int __ref;

public:
	ProductNode(ProductNode * p);
	ProductNode(unsigned int minterm, unsigned int size);
	ProductNode(unsigned char * p, unsigned int size);

	unsigned int getRefCount(){return __ref;}
	void ref(){++__ref;}
	void deref(){--__ref;}

	unsigned char * getProduct(){ return __pProduct; }
	ProductNode * getNext(){ return __pNext; }
	ProductNode * getPre(){ return __pPre; }

	void setNext(ProductNode * pNewNext){ __pNext = pNewNext; if(pNewNext) pNewNext->__pPre = this; }
	void setPre(ProductNode * pNewPre){ __pPre = pNewPre; }
	void setProduct(unsigned int n);
};

