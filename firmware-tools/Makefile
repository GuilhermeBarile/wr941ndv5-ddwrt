CC=gcc
CFLAGS=-g

mktplinkfw: 
	$(CC) $(CFLAGS) $(LDFLAGS) -lcrypto -lssl mktplinkfw.c -o mktplinkfw

clear:
	rm -f mktplinkfw
distclean: clean
