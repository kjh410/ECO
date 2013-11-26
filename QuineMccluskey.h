#include "Expression.h"

class QuineMccluskey{
public:
	QuineMccluskey(char * filename);
	Expression * readFile(char * filename);
	void printExpression(char * filename, Expression * exp);
};
