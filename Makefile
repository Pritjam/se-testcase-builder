GCC = aarch64-linux-gnu-gcc
# GCC = gcc --arch=aarch64
# CLANG = clang -arch=aarch64
OBJDUMP = aarch64-linux-gnu-objdump

all: clean build objdump

build:
	$(GCC) -e start -nostdlib -nostdinc -static template.s -o template

objdump:
	$(GCC) -O3 -e start -nostdlib -nostdinc -static template.s -c
	$(OBJDUMP) -D template.o > template.od

clean: 
	rm -f template.od template template.o