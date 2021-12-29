#include <stdio.h>
#include <unistd.h>
#include "fpioa.h"
#include "gpio.h"
#include "sysctl.h"
#include "sleep.h"
#include "keypad-nxn.h"

#define TEST_PROJECT
//#define APP_PROJECT

#ifdef TEST_PROJECT
int mainTest(void);
#endif

#define ROW1 3
#define ROW2 10
#define ROW3 11
#define ROW4 12
#define COL1 13
#define COL2 14
#define COL3 15
#define COL4 32

keypad_t mykeypad;
const uint8_t keypad_rows_number = 4;
const uint8_t keypad_cols_number = 4;
bool keypad_init_periph()
{
    // init gpio clock
    gpio_init();

    // all columns as "INPUT PULL_UP"

    fpioa_set_function(COL1, FUNC_GPIO0);
    gpio_set_drive_mode(0, GPIO_DM_INPUT_PULL_UP);
    fpioa_set_function(COL2, FUNC_GPIO1);
    gpio_set_drive_mode(1, GPIO_DM_INPUT_PULL_UP);
    fpioa_set_function(COL3, FUNC_GPIO2);
    gpio_set_drive_mode(2, GPIO_DM_INPUT_PULL_UP);
    fpioa_set_function(COL4, FUNC_GPIO3);
    gpio_set_drive_mode(3, GPIO_DM_INPUT_PULL_UP);

    // all rows as " FLOATING INPUT"
    fpioa_set_function(ROW1, FUNC_GPIO4);
    gpio_set_drive_mode(4, GPIO_DM_INPUT);
    fpioa_set_function(ROW2, FUNC_GPIO5);
    gpio_set_drive_mode(5, GPIO_DM_INPUT);
    fpioa_set_function(ROW3, FUNC_GPIO6);
    gpio_set_drive_mode(6, GPIO_DM_INPUT);
    fpioa_set_function(ROW4, FUNC_GPIO7);
    gpio_set_drive_mode(7, GPIO_DM_INPUT);

    return true;
}
bool keypad_deinit_periph()
{
    gpio_set_drive_mode(0, GPIO_DM_INPUT);
    gpio_set_drive_mode(1, GPIO_DM_INPUT);
    gpio_set_drive_mode(2, GPIO_DM_INPUT);
    gpio_set_drive_mode(3, GPIO_DM_INPUT);

    gpio_set_drive_mode(4, GPIO_DM_INPUT);
    gpio_set_drive_mode(5, GPIO_DM_INPUT);
    gpio_set_drive_mode(6, GPIO_DM_INPUT);
    gpio_set_drive_mode(7, GPIO_DM_INPUT);

    sysctl_clock_disable(SYSCTL_CLOCK_GPIO);

    return true;
}
void row_as_input(uint8_t row)
{
    switch (row)
    {
    case 1:
        gpio_set_drive_mode(4, GPIO_DM_INPUT);
        break;
    case 2:
        gpio_set_drive_mode(5, GPIO_DM_INPUT);
        break;
    case 3:
        gpio_set_drive_mode(6, GPIO_DM_INPUT);
        break;
    case 4:
        gpio_set_drive_mode(7, GPIO_DM_INPUT);
        break;
    default:
        break;
    }
}
void row_as_output_low(uint8_t row)
{
    switch (row)
    {
    case 1:
        gpio_set_drive_mode(4, GPIO_DM_OUTPUT);
        gpio_set_pin(4, GPIO_PV_LOW);
        break;
    case 2:
        gpio_set_drive_mode(5, GPIO_DM_OUTPUT);
        gpio_set_pin(5, GPIO_PV_LOW);
        break;
    case 3:
        gpio_set_drive_mode(6, GPIO_DM_OUTPUT);
        gpio_set_pin(6, GPIO_PV_LOW);
        break;
    case 4:
        gpio_set_drive_mode(7, GPIO_DM_OUTPUT);
        gpio_set_pin(7, GPIO_PV_LOW);
        break;
    default:
        break;
    }
}
uint8_t get_column_value(uint8_t column)
{
    switch (column)
    {
    case 1:
        return (uint8_t)gpio_get_pin(0);
    case 2:
        return (uint8_t)gpio_get_pin(1);
    case 3:
        return (uint8_t)gpio_get_pin(2);
    case 4:
        return (uint8_t)gpio_get_pin(3);
    default:
        return 0;
    }
}
void keypad_delay_ms(int ms)
{
    msleep(ms);
}

int main(void)
{
    // Create a variable of type "keypad_t" and define each of its attributes
    mykeypad.rows = keypad_rows_number;
    mykeypad.columns = keypad_cols_number;
    mykeypad.init_periph = keypad_init_periph;
    mykeypad.deinit_periph = keypad_deinit_periph;
    mykeypad.row_as_Input = row_as_input;
    mykeypad.row_as_OutputLow = row_as_output_low;
    mykeypad.get_column_value = get_column_value;
    mykeypad.delay_ms = keypad_delay_ms;

    // Call "init_keypad" to initialize the keypad. In this case it does nothing
    init_keypad(&mykeypad);

#ifdef APP_PROJECT
    printf("PRESS KEYS:\n\r");
#endif
#ifdef TEST_PROJECT
    return mainTest();
#endif

    while (1)
    {
#ifdef APP_PROJECT
        //Call "scan_keypad" to check if any key is pressed
        keypad_keyPos_t key;
        scan_keypad(&mykeypad, &key);
        if (key.row != -1 && key.column != -1)
        {
            printf("key pressed: r%i,c%i \n\r", key.row, key.column);
        }

        sleep(1);
#endif
    }
}
