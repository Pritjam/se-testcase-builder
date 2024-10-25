GCC = aarch64-linux-gnu-gcc
# GCC = gcc --arch=aarch64
# CLANG = clang -arch=aarch64
OBJDUMP = aarch64-linux-gnu-objdump


all: clean build objdump

build:
	$(GCC) -e start -nostdlib -nostdinc -static knapsack_simple.s -o knapsack_simple
	$(GCC) -e start -nostdlib -nostdinc -static knapsack_simple.s -c

objdump:
	$(GCC) -O3 -e start -nostdlib -nostdinc -static knapsack_simple.s -c
	$(OBJDUMP) -D knapsack_simple.o > knapsack_simple.od

clean: 
	rm -f knapsack_simple.od knapsack_simple knapsack_simple.o