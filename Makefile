GCC = aarch64-linux-gnu-gcc
# GCC = gcc --arch=aarch64
# CLANG = clang -arch=aarch64
OBJDUMP = aarch64-linux-gnu-objdump

all: clean build objdump

build:
	$(GCC) -e start -nostdlib -nostdinc -static test.s -o test

objdump:
	$(GCC) -O3 -e start -nostdlib -nostdinc -static test.s -c
	$(OBJDUMP) -D test.o > test.od

clean: 
	rm -f test.od test test.o