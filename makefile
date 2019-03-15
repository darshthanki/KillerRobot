INCLUDE = -I/usr/include/
LIBDIR  = -L/usr/lib/

COMPILERFLAGS = -Wall
CC = gcc
CFLAGS = $(COMPILERFLAGS) $(INCLUDE)
LIBRARIES = -lX11 -lXi -lXmu -lglut -lGL -lGLU -lm

All: main

main: main.o
	$(CC) $(CFLAGS) -o $@ $(LIBDIR) $< $(LIBRARIES)

clean:
	rm *.o

clean-all:
	rm *.o main