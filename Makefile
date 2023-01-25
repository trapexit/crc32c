all: crc32c

CFLAGS = -O2

DEPS = crc32c.h
OBJS = main.o crc32c.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

crc32c: $(OBJS)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm -vf $(OBJS) crc32c

