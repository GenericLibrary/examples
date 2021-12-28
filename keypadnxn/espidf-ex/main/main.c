// Uncommend just one
//#define TEST_PROJECT
#define APP_PROJECT

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include <stdio.h>
#include "esp_system.h"
#include "keypad-nxn.h"

#ifdef TEST_PROJECT
int mainTest(void);
#endif

#define ROW1 18
#define ROW2 19
#define ROW3 21
#define ROW4 22
#define COL1 15
#define COL2 23
#define COL3 4
#define COL4 5

keypad_t mykeypad;
const uint8_t keypad_rows_number = 4;
const uint8_t keypad_cols_number = 4;
bool keypad_init_periph()
{
    // Init peripherals asociated to the keypad:
    // all columns as "INPUT PULL_UP"
    gpio_config_t io_conf;
    io_conf.pin_bit_mask = 1ULL << COL1;
    io_conf.mode = GPIO_MODE_INPUT;
    io_conf.pull_down_en = GPIO_PULLDOWN_DISABLE;
    io_conf.pull_up_en = GPIO_PULLUP_ENABLE;
    io_conf.intr_type = GPIO_INTR_DISABLE;
    gpio_config(&io_conf);
    io_conf.pin_bit_mask = 1ULL << COL2;
    gpio_config(&io_conf);
    io_conf.pin_bit_mask = 1ULL << COL3;
    gpio_config(&io_conf);
    io_conf.pin_bit_mask = 1ULL << COL4;
    gpio_config(&io_conf);

    // all rows as " FLOATING INPUT"
    io_conf.pull_up_en = GPIO_PULLUP_DISABLE;
    io_conf.pin_bit_mask = 1ULL << ROW1;
    gpio_config(&io_conf);
    io_conf.pin_bit_mask = 1ULL << ROW2;
    gpio_config(&io_conf);
    io_conf.pin_bit_mask = 1ULL << ROW3;
    gpio_config(&io_conf);
    io_conf.pin_bit_mask = 1ULL << ROW4;
    gpio_config(&io_conf);

    return true;
}
bool keypad_deinit_periph()
{
    gpio_reset_pin(COL1);
    gpio_reset_pin(COL2);
    gpio_reset_pin(COL3);
    gpio_reset_pin(COL4);
    gpio_reset_pin(ROW1);
    gpio_reset_pin(ROW2);
    gpio_reset_pin(ROW3);
    gpio_reset_pin(ROW4);
    return true;
}
void keypad_row_as_input(uint8_t row)
{
    switch (row)
    {
    case 1:
        gpio_set_direction(ROW1, GPIO_MODE_INPUT);
        break;
    case 2:
        gpio_set_direction(ROW2, GPIO_MODE_INPUT);
        break;
    case 3:
        gpio_set_direction(ROW3, GPIO_MODE_INPUT);
        break;
    case 4:
        gpio_set_direction(ROW4, GPIO_MODE_INPUT);
        break;
    default:
        break;
    }
}
void keypad_row_as_output_low(uint8_t row)
{
    switch (row)
    {
    case 1:
        gpio_set_direction(ROW1, GPIO_MODE_OUTPUT);
        gpio_set_level(ROW1, 0);
        break;
    case 2:
        gpio_set_direction(ROW2, GPIO_MODE_OUTPUT);
        gpio_set_level(ROW2, 0);
        break;
    case 3:
        gpio_set_direction(ROW3, GPIO_MODE_OUTPUT);
        gpio_set_level(ROW3, 0);
        break;
    case 4:
        gpio_set_direction(ROW4, GPIO_MODE_OUTPUT);
        gpio_set_level(ROW4, 0);
        break;
    default:
        break;
    }
}
uint8_t keypad_get_column_value(uint8_t column)
{
    switch (column)
    {
    case 1:
        return (uint8_t)gpio_get_level(COL1);
    case 2:
        return (uint8_t)gpio_get_level(COL2);
    case 3:
        return (uint8_t)gpio_get_level(COL3);
    case 4:
        return (uint8_t)gpio_get_level(COL4);
    default:
        return 0;
    }
}
void keypad_delay_ms(int ms)
{
    vTaskDelay(pdMS_TO_TICKS(ms));
}

void app_main(void)
{
    // Create a variable of type "keypad_t" and define each of its attributes
    mykeypad.rows = keypad_rows_number;
    mykeypad.columns = keypad_cols_number;
    mykeypad.init_periph = keypad_init_periph;
    mykeypad.deinit_periph = keypad_deinit_periph;
    mykeypad.row_as_Input = keypad_row_as_input;
    mykeypad.row_as_OutputLow = keypad_row_as_output_low;
    mykeypad.get_column_value = keypad_get_column_value;
    mykeypad.delay_ms = keypad_delay_ms;

#ifdef APP_PROJECT
    // Call "init_keypad" to initialize the keypad. In this case it does nothing
    init_keypad(&mykeypad);

    printf("\nPRESS KEYS:\n");
#endif

#ifdef TEST_PROJECT
    mainTest();
#endif

#ifdef APP_PROJECT
    while (1)
    {

        //Call "scan_keypad" to check if any key is pressed
        keypad_keyPos_t key;
        scan_keypad(&mykeypad, &key);
        if (key.row != -1 && key.column != -1)
        {
            printf("key pressed: %d, %d\n", key.row, key.column);
        }
        vTaskDelay(1000 / portTICK_PERIOD_MS);

    }
#endif
}
