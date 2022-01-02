#pragma once
#include "uart.h"
#include "sim800L.h"
#include "sleep.h"

#ifdef __cplusplus
extern "C"
{
#endif

#define UART_NUM UART_DEVICE_2
    sim800L_t modem;

#define RX_BUFFER_LEN 250
    static volatile char rx_buffer[RX_BUFFER_LEN];
    static volatile int head = 0;
    static volatile int tail = 0;

    int on_uart_recv(void *ctx)
    {
        char buf;
        int ret = uart_receive_data(UART_NUM, &buf, 1);

        if (ret != 1)
            return 1;

        rx_buffer[head] = buf;
        head = (head == (RX_BUFFER_LEN - 1) ? 0 : head + 1);
        if (head == tail)
        {
            tail = (tail == (RX_BUFFER_LEN - 1) ? 0 : tail + 1);
        }

        return 0;
    }

    sim800L_err_t modem_init_periph()
    {
        fpioa_set_function(13, FUNC_UART1_RX + UART_NUM * 2);
        fpioa_set_function(14, FUNC_UART1_TX + UART_NUM * 2);

        uart_init(UART_NUM);
        uart_configure(UART_NUM, 115200, UART_BITWIDTH_8BIT, UART_STOP_1, UART_PARITY_NONE);
        uart_set_receive_trigger(UART_NUM, UART_RECEIVE_FIFO_1);
        uart_irq_register(UART_NUM, UART_RECEIVE, on_uart_recv, NULL, 2);

        fpioa_set_function(12, FUNC_GPIO0);
        gpio_init();
        gpio_set_drive_mode(0, GPIO_DM_INPUT);

        return SIM800L_OK;
    }
    sim800L_err_t modem_deinit_periph()
    {
        fpioa_set_function(13, FUNC_RESV0);
        fpioa_set_function(14, FUNC_RESV0);

        uart_irq_unregister(UART_NUM, UART_RECEIVE);
        sysctl_reset(SYSCTL_RESET_UART1 + UART_NUM);
        sysctl_clock_disable(SYSCTL_CLOCK_UART1 + UART_NUM);

        fpioa_set_function(12, FUNC_RESV0);
        sysctl_clock_disable(SYSCTL_CLOCK_GPIO);

        return SIM800L_OK;
    }
    sim800L_err_t modem_write(uint8_t *bufer, int size)
    {
        int txlen = uart_send_data(UART_NUM, (char *)bufer, size);

        return txlen == size ? SIM800L_OK : SIM800L_ERROR;
    }
    sim800L_err_t modem_read_byte(char *byte)
    {
        bool is_available;
        is_available = (head != tail);

        if (is_available)
        {
            *byte = rx_buffer[tail];
            tail = (tail == (RX_BUFFER_LEN - 1) ? 0 : tail + 1);

            return SIM800L_OK;
        }
        else
        {
            return SIM800L_ERROR;
        }
    }
    int modem_available(void)
    {
        int bytes_available;
        bytes_available = head >= tail ? head - tail : RX_BUFFER_LEN + head - tail;
        return bytes_available;
    }
    sim800L_err_t modem_flush(void)
    {
        head = 0;
        tail = 0;
        return SIM800L_OK;
    }
    sim800L_err_t modem_delay_ms(int ms)
    {
        msleep(ms);
        return SIM800L_OK;
    }
    int64_t modem_get_time_ms(void)
    {
        return (int64_t)(sysctl_get_time_us() / 1000);
    }
    sim800L_err_t modem_pwrkey_gpio_set_level(int level)
    {
        // pwrkey pin works with 3v level.
        // This implementation take care that pwrkey and gpio are connected directly.
        if (level == 0)
        {
            // set 0v in pwrkey pin
            gpio_set_drive_mode(0, GPIO_DM_OUTPUT);
            gpio_set_pin(0, GPIO_PV_LOW);
        }
        else
        {
            // set 3v in pwrkey pin because of internal pull-up of pwrkey
            gpio_set_drive_mode(0, GPIO_DM_INPUT);
        }
        return SIM800L_OK;
    }

#ifdef __cplusplus
}
#endif
