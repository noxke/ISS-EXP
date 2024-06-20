CFLAGS = -m32 -g -no-pie -fstack-protector -z execstack

all: prog2 input

prog2: prog2.c
	gcc $(CFLAGS) -o $@ $<

input: exp.py
	python3 $<

run: all
	setarch i386 -R ./prog2

clean:
	rm prog2 input
