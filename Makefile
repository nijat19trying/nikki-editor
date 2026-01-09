CC = gcc
CFLAGS = -Wall -Wextra -O2
PREFIX = /usr/local

BIN = nikki
SRC = src/nikki.c

all:
	$(CC) $(CFLAGS) $(SRC) -o $(BIN)

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 755 $(BIN) $(DESTDIR)$(PREFIX)/bin/$(BIN)

clean:
	rm -f $(BIN)
