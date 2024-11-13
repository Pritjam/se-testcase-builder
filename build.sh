#!/bin/sh

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 path/to/executable. Will first check verification (using verify.py) then compile path/to/executable.s into an executable and objdump." >&2
  exit 1
fi

GCC=aarch64-linux-gnu-gcc
OBJDUMP=aarch64-linux-gnu-objdump
SE_GCC_ARGS="-e start -nostdlib -nostdinc -static"

python3 verify.py $1.s
if [ $? -eq 1 ]; then
    echo "File $1.s failed verification."
    exit 1
fi

rm -rf $1
$GCC $SE_GCC_ARGS $1.s -c -o temp.o 
$OBJDUMP -D temp.o > $1.od
rm temp.o
$GCC $SE_GCC_ARGS $1.s -o $1

