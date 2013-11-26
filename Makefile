CC = g++
CUDD = /cudd-2.5.0
INCLUDE = $(CUDD)/include
CFLAGS = -g -Wall -W
DIRS = -I$(INCLUDE) -L$(CUDD)/cudd -L$(CUDD)/mtr -L$(CUDD)/util -L$(CUDD)/st -L$(CUDD)/epd -L$(CUDD)/obj
LIBS = -lcudd -lmtr -lst -lutil -lepd -lm -lobj

all:
	make clean
	make netlist_parser.o
	make DdWire.o
	make node.o
	make DdGate.o
	make BddBuilder.o
	make VerilogMaker.o
	make ProductNode.o
	make ProductList.o
	make Expression.o
	make QuineMccluskey.o
	$(CC) main.cpp -o KWIX DdWire.o DdGate.o BddBuilder.o netlist_parser.o node.o  VerilogMaker.o ProductNode.o ProductList.o Expression.o QuineMccluskey.o $(CFLGAS) $(DIRS) $(LIBS)

VerilogMaker.o:
	$(CC) VerilogMaker.cpp -c $(CFLAGS) $(DIRS) $(LIBS)

DdWire.o:
	$(CC) DdWire.cpp -c $(CFLAGS) $(DIRS) $(LIBS)

DdGate.o:
	$(CC) DdGate.cpp -c $(CFLAGS) $(DIRS) $(LIBS)

BddBuilder.o:
	$(CC) BddBuilder.cpp -c $(CFLAGS) $(DIRS) $(LIBS)

netlist_parser.o:
	$(CC) netlist_parser.cpp $(CFLAGS) -c 

node.o:
	$(CC) node.cpp $(CFLAGS) -c

QuineMccluskey.o:
	$(CC) QuineMccluskey.cpp $(CFLAGS) -c

ProductNode.o:
	$(CC) ProductNode.cpp $(CFLAGS) -c

ProductList.o:
	$(CC) ProductList.cpp $(CFLAGS) -c

Expression.o:
	$(CC) Expression.cpp $(CFLAGS) -c

clean:
	rm -rf DdWire.o DdGate.o BddBuilder.o netlist_parser.o node.o tree.o main.o VerilogMaker.o QuineMccluskey.o ProductNode.o ProductList.o Expression.o
