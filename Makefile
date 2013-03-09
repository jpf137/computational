##Standard makefile:
##compiler:
CC=cc
##linker?

##to recover this value, use $(CC)
##set compiler flags:
CFLAGS=-Wall -g
##make programname general?
all: prog1.x

prog1.x: cprog1.o
	$(CC) cprog1.o -o cprog1.x

prog1.o:
	$(CC) $(CFLAGS) -o cprog1.o cprog1.c

lazy:
	make cprog1
clean:
	rm -f cprog1.x
	rm -f cprog1.o