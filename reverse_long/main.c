#include "functions.h"
#include <stdio.h>
#include <stdlib.h>

#define NUM_TESTS 1000000

// Generate a lookup table for 32bit operating system
// using macro

#define R2(n) n, n + 2 * 64, n + 1 * 64, n + 3 * 64

#define R4(n) R2(n), R2(n + 2 * 16), R2(n + 1 * 16), R2(n + 3 * 16)

#define R6(n) R4(n), R4(n + 2 * 4), R4(n + 1 * 4), R4(n + 3 * 4)

// Lookup table that store the reverse of each table

unsigned long lookuptable[256] = {R6(0), R6(2), R6(1), R6(3)};

/* Function to reverse bits of num */

unsigned long reverseBits(unsigned long num) {
  unsigned long reverse_num = 0; // Reverse and then rearrange
  // first chunk of 8 bits from right
  reverse_num =
      lookuptable[num & 0xFF] << 56 | 
      lookuptable[(num >> 8) & 0xFF] << 48 |
      lookuptable[(num >> 16) & 0xFF] << 40 |
      lookuptable[(num >> 24) & 0xFF] << 32 |
      lookuptable[(num >> 32) & 0xFF] << 24 |
      lookuptable[(num >> 40) & 0xFF] << 16 |
      lookuptable[(num >> 48) & 0xFF] << 8 | 
      lookuptable[(num >> 56) & 0xFF];
  return reverse_num;
} // driver program to test above function

int main() {

  unsigned long inputs[] = {0xDEADBEEFABCD1234, 0x8000000100042069,
                            0x00042069FADEDB0B, 0xDEADF00D0DEADA55};
  unsigned long solutions[] = {0x2c48b3d5f77db57b, 0x9604200080000001,
                               0xd0db7b5f96042000, 0xaa5b57b0b00fb57b};

  for (unsigned long i = 0; i < NUM_TESTS; i++) {
    unsigned long num = rand() | (unsigned long)rand() << 32;
    unsigned long student = rev_ulong_dword_jt(num);
    if (student != reverseBits(num)) {
      printf("[FAIL] %016lx %016lx\n", num, student);
    }
  }
  return 0;
}