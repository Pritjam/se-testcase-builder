GCC = aarch64-linux-gnu-gcc
# GCC = gcc --arch=aarch64
# CLANG = clang -arch=aarch64
OBJDUMP = aarch64-linux-gnu-objdump


all: clean build objdump

build:
	$(GCC) -e start -nostdlib -nostdinc -static reverse_long.c -S -O3
	$(GCC) -e start -nostdlib -nostdinc -static reverse_long.s -o reverse_long
	$(GCC) -e start -nostdlib -nostdinc -static reverse_long.s -c

objdump:
	$(GCC) -O3 -e start -nostdlib -nostdinc -static reverse_long.s -c
	$(OBJDUMP) -D reverse_long.o > reverse_long.od

clean: 
	rm -f reverse_long.od reverse_long reverse_long.o