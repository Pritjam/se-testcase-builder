static unsigned long inputs[] = {0xDEADBEEFABCD1234, 0x8000000100042069, 0x00042069FADEDB0B, 0xDEADF00D0DEADA55};

unsigned long rev_ulong_dword_jt(unsigned long input) {
  unsigned long lut = 0xF7B3D591E6A2C480;
  unsigned long r = 0;
  for(unsigned long i = 0; i < 16; i++) {
    r <<= 4;
    unsigned long index = input & 0xF;
    switch (index) {
      case 0 : r |= (lut >> (0)) & 0xF; break;
      case 1 : r |= (lut >> (4)) & 0xF; break;
      case 2 : r |= (lut >> (8)) & 0xF; break;
      case 3 : r |= (lut >> (12)) & 0xF; break;
      case 4 : r |= (lut >> (16)) & 0xF; break;
      case 5 : r |= (lut >> (20)) & 0xF; break;
      case 6 : r |= (lut >> (24)) & 0xF; break;
      case 7 : r |= (lut >> (28)) & 0xF; break;
      case 8 : r |= (lut >> (32)) & 0xF; break;
      case 9 : r |= (lut >> (36)) & 0xF; break;
      case 10: r |= (lut >> (40)) & 0xF; break;
      case 11: r |= (lut >> (44)) & 0xF; break;
      case 12: r |= (lut >> (48)) & 0xF; break;
      case 13: r |= (lut >> (52)) & 0xF; break;
      case 14: r |= (lut >> (56)) & 0xF; break;
      case 15: r |= (lut >> (60)) & 0xF; break;
    }
    input >>= 4;
  }

  return r;
}

unsigned long start() {
  for(unsigned long i = 0; i < 4; i++) {
    rev_ulong_dword_jt(inputs[i]);
  }
  return 0;
}



