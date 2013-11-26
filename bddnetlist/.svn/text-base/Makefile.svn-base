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
	make tree.o
	make BddBuilder.o
	make VerilogMaker.o
	$(CC) main.cpp -o main.o DdWire.o DdGate.o BddBuilder.o netlist_parser.o node.o tree.o VerilogMaker.o  $(CFLGAS) $(DIRS) $(LIBS)

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

tree.o:
	$(CC) tree.cpp $(CFLAGS) -c

clean:
	rm -rf DdWire.o DdGate.o BddBuilder.o netlist_parser.o node.o tree.o main.o VerilogMaker.o
