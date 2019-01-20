# Makefile for vgraph

TARGET = vgraph
LIBS = "-lm"
CC ?= gcc
CFLAGS = -Wall -Wextra -Werror -pedantic

.PHONY: default all clean

ifeq ($(PREFIX),)
	PREFIX := /usr
endif

default: clean $(TARGET)
all: default

#OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c))
OBJECTS = $(patsubst %.c, %.o, $(TARGET).c)
HEADERS = $(wildcard *.h)

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

.PRECIOUS: $(TARGET) $(OBJECTS)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -Wall $(LIBS) -o $@

install: $(TARGET)
	install -m644 vgraph $(DESTDIR)$(PREFIX)/bin/

clean:
	-rm -f *.o
	-rm -f $(TARGET)
