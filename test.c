#define write_char(c) *(char*)~0 = c
#define max(a, b) (a > b) ? a : b


void start() {
    write_char(0x69);
}
