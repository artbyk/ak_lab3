CC=g++
CFLAGS=-c
 
all: lib exec

exec: main.o my_lib.a
	$(CC) main.o my_lib.a -o my_lib

main.o:
	$(CC) $(CFLAGS) main.cpp

lib: calculator.o
	ar -rcs my_lib.a my_lib.o

calculator.o:
	$(CC) $(CFLAGS) my_lib.cpp

clean:
	rm -f *.o *.a my_lib
