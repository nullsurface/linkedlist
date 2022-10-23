CC = gcc
CFLAGS = -Wall 
OBJS = list.o

all: 3Sum

3Sum:	$(OBJS)
		$(CC) $(CFLAGS) $^ -o 3Sum

main.o: main.c list.h 
		$(CC) -c $(CFLAGS) main.c

list.o: list.c list.h
		$(CC) -c $(CFLAGS) list.c

clean:
		rm -rf *.o 3Sum
