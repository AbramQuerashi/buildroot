# CFLAGS_EXTRA = $(shell $(PKG_CONFIG) --cflags libdrm)
# LIBS = $(shell $(PKG_CONFIG) --libs libdrm)

.PHONY: clean

hello: hello.c
	$(CC) $(CFLAGS) $(CFLAGS_EXTRA) -o '$@' '$<' $(LIBS)

clean:
	rm hello
