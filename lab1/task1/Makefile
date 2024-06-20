CFLAGS = -m32 -g -no-pie

all: prog1 exp

prog1: prog1.c
	gcc $(CFLAGS) -o $@ $<

exp: exp.py
	python3 $<

run: all
	setarch i386 -R ./prog1 < exp

clean:
	rm prog1 exp
