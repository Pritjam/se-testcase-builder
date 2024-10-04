# SE Lab Testcase Generation System

## Installing the cross-compiler

On Ubuntu, run `sudo apt install gcc-aarch64-linux-gnu binutils-aarch64-linux-gnu binutils-aarch64-linux-gnu-dbg build-essential` to install the needed components. This installs a cross compiler that can compile/assemble ARM64 code on your machine.

On Windows, first set up WSL (or some other virtualization system) so that you can use Ubuntu.

On Mac, you're on your own :)

## Usage

This is a very simple build system to generate testcases. Type the testcase in some file with a `.s` extension. Then run `./build.sh FILENAME` where `FILENAME` is the name of the test file (without the `.s` extension). This will create a directory called `FILENAME` with the executable, object dump, and source ASM file.

A file called `template.s` is also provided as an example. Several testcases are found in the `testcases` directory. This example writes the number `69` to the special memory address `0xFFFFFFFFFFFFFFFF`, which the SE Lab system maps to a special MMIO print address.

