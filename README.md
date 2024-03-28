# SE Lab Testcase Generation System

## Installing the cross-compiler

On Ubuntu, run `sudo apt install gcc-aarch64-linux-gnu binutils-aarch64-linux-gnu binutils-aarch64-linux-gnu-dbg build-essential` to install the needed components. This installs a cross compiler that can compile/assemble ARM64 code on your machine.

On Windows, first set up WSL (or some other virtualization system) so that you can use Ubuntu.

On Mac, you're on your own :)

## Usage

This is a very simple build system to generate testcases. Type the testcase in `test.s`. Then run `make` to generate the object file, ELF, and executable. Then run `rename.sh <testcase name>` to create a folder called `<testcase name>`, copy the build fruit to that folder, and rename the build fruit to that name.