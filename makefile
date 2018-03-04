CC=g++

.PHONY: all clean run

all: hello
	@echo all: complete

hello: hello.o world.o
	$(CC) -Wall -o $@ $^

hello.o: hello.cpp
	$(CC) -Wall -c -o $@ hello.cpp

world.o: world.cpp world.h
	$(CC) -Wall -c -o $@ world.cpp

clean:
	rm hello.o world.o hello

run: hello
	@./$^
