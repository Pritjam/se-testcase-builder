#define write_char(c) *(char*)~0 = c

void start() {
    write_char(0x69);
}
