GCC = aarch64-linux-gnu-gcc
# GCC = gcc --arch=aarch64
# CLANG = clang -arch=aarch64
OBJDUMP = aarch64-linux-gnu-objdump


all: clean build objdump

build:
	$(GCC) -e start -nostdlib -nostdinc -static knapsack.s -o knapsack
	$(GCC) -e start -nostdlib -nostdinc -static knapsack.s -c

objdump:
	$(GCC) -O3 -e start -nostdlib -nostdinc -static knapsack.s -c
	$(OBJDUMP) -D knapsack.o > knapsack.od

clean: 
	rm -f knapsack.od knapsack knapsack.o