#include <string.h>
#include "Unity/unity.h"

static uint32_t s_test_start, s_test_stop;

void unity_putc(int c) {
    if (c == '\n') {
        putchar('\r');
        putchar('\n');
    } else if (c == '\r') {
    } else {
        putchar( c);
    }
}

void unity_flush(void) {

}

void unity_exec_time_start(void) {
    s_test_start = 0;
}

void unity_exec_time_stop(void) {
    s_test_stop = 0;
}

uint32_t unity_exec_time_get_ms(void) {
    return (s_test_stop - s_test_start);
}

