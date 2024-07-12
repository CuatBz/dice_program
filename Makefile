CFLAGS=-O2 -std=c11 -march=native -g -pipe -Wall -Wextra -Wshadow

manydice: diceroll.o manydice.o
	$(CC) $(CFLAGS) $^ $(LDFLAGS) -o $@

clean:
	rm -f *.o
	rm -f manydice

.PHONY: clean
