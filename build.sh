#!/bin/sh

GCC=aarch64-linux-gnu-gcc
OBJDUMP=aarch64-linux-gnu-objdump
SE_GCC_ARGS="-e start -nostdlib -nostdinc -static"
TESTCASE_DIR=testcase

rm -rf $1
mkdir $1
$GCC $SE_GCC_ARGS $1.s -c -o temp.o 
$OBJDUMP -D temp.o > $1/$1.od
rm temp.o
$GCC $SE_GCC_ARGS $1.s -o $1/$1
cp template.s $1/$1.s

