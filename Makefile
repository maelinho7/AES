CC=gcc
CFLAGS = -std=c11 -Wall -Wextra -g 
CPPFLAGS = -I../include -DDEBUG
LDFLAGS=
EXEC=aes
 
all: aes
 
aes: aes.o
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS) 

aes.o : aes.c aes.h
	$(CC) $(CFLAGS) $(CPPFLAGS) -c $< 
 
clean:
	@rm -f *~ *.o $(EXEC)

.PHONY : clean
