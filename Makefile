CC=gcc
CFLAGS=-I. -pthread -std=c99
DEPS = BENSCHILLIBOWL.h
OBJ = BENSCHILLIBOWL.o main.o 

%.o: %.c $(DEPS)
	$(CC) -g -c -o $@ $< $(CFLAGS)

main: $(OBJ)
	$(CC) -g -o $@ $^ $(CFLAGS)
