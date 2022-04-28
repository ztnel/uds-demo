CC=gcc
CFLAGS=-g -std=c99 -Wall

.PHONY: all
all: server client

server: server.o
	$(CC) -o server server.o

client: client.o
	$(CC) -o client client.o

clean:
	rm -f ./*.o ./client ./server
