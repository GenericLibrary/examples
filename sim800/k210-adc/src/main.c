#include <stdio.h>
#include <stdbool.h>
#include <unistd.h>
#include "fpioa.h"
#include "gpio.h"
#include "sysctl.h"

#include "assert.h"
#include "sim800l.h"
#include "modem.h"
#include "uart.h"
#include "gpio.h"

int main(void)
{
    plic_init();
    sysctl_enable_irq();

    printf("starting: \n\r");

    modem.init_periph = modem_init_periph;
    modem.deinit_periph = modem_deinit_periph;
    modem.write = modem_write;
    modem.read_byte = modem_read_byte;
    modem.available = modem_available;
    modem.flush = modem_flush;
    modem.delay_ms = modem_delay_ms;
    modem.get_time_ms = modem_get_time_ms;
    modem.ctrl.type = SIM800L_CTRL_NONE;

    sim800L_err_t res = sim800L_init(&modem);
    printf("sim800L_init: %d\n", res);
    if (res != SIM800L_OK)
        goto end;

    // UNCOMMENT ONE BLOCK OF CODE AT A TIME

    // GET BATTERY LEVEL AND ADC-PIN LEVEL
    /*
    int mvolts = -1;
    res = sim800_battery_level(&modem, &mvolts);
    printf("sim800_battery_level , res = %u, mvolts = %i\n\n", res, mvolts);
    if (res != SIM800L_OK)
        while (1)
            ;

    int status = -1;
    int adc = -1;
    res = sim800_read_adc(&modem, &status, &adc);
    printf("sim800_read_adc , res = %u, status = %i, adc= %imv\n\n", res, status, adc);
    if (res != SIM800L_OK)
        while (1)
            ;
    */

    //  MAKE GET REQUEST
    /*
    res = sim800_wait_until_detect_signal(&modem, 10000);
    printf("sim800_wait_until_detect_signal, res = %u\n", res);
    if (res != SIM800L_OK)
        goto end;

    res = sim800_link_net(&modem, "entel", "", "", true);
    printf("sim800_link_net , res = %u\n\n", res);
    if (res != SIM800L_OK)
        goto end;

    // make 3 get requests
    for (int i = 0; i < 3; i++)
    {
        printf("\n\r\n\r");

        // start transaction
        res = sim800_tcp_req_start(&modem, "exploreembedded.com", 80, false, true);
        printf("sim800_tcp_req_start , res = %u \n", res);
        if (res != SIM800L_OK)
        {
            sim800_tcp_req_end(&modem, NULL, 0, false);
            goto end;
        }

        // send content
        modem.flush();
        char content[] = "GET /wiki/images/1/15/Hello.txt HTTP/1.0\n\n";
        modem.write((uint8_t *)content, strlen(content));

        // mandatory part in transparent mode
        modem.delay_ms(1000);
        modem.write((uint8_t *)"+++", 3);
        modem.delay_ms(1000);

        // end transaction
        char torcv[1000] = {0};
        res = sim800_tcp_req_end(&modem, torcv, sizeof(torcv), true);
        printf("sim800_tcp_req_end , res = %u \n", res);
        if (res != SIM800L_OK)
            goto end;

        // print result
        printf("RECEIVED:\n\"%s\"\n\n", torcv);
    }
    */

    //  MAKE POST REQUEST
    // check your posts in http://ptsv2.com/t/uzixe-1640999372
    // Check if this url path is still alive, else change it for a new one
    /*
    res = sim800_wait_until_detect_signal(&modem, 10000);
    printf("sim800_wait_until_detect_signal, res = %u\n", res);
    if (res != SIM800L_OK)
        goto end;

    res = sim800_link_net(&modem, "entel", "", "", true);
    printf("sim800_link_net , res = %u\n\n", res);
    if (res != SIM800L_OK)
        goto end;

    // make 3 get requests
    for (int i = 0; i < 3; i++)
    {
        printf("\n\r\n\r");

        // start transaction
        res = sim800_tcp_req_start(&modem, "ptsv2.com", 80, false, true);
        printf("sim800_tcp_req_start , res = %u \n", res);
        if (res != SIM800L_OK)
        {
            sim800_tcp_req_end(&modem, NULL, 0, false);
            goto end;
        }

        // send content
        modem.flush();
        char content[] = "POST /t/uzixe-1640999372/post HTTP/1.0\n"
                         "Host: ptsv2.com\n"
                         "Content-Length:7\n"
                         "Content-Type: application/x-www-form-urlencoded\n\n"
                         "temp=89"
                         "\n\n";
        modem.write((uint8_t *)content, strlen(content));

        // mandatory part in transparent mode
        modem.delay_ms(1000);
        modem.write((uint8_t *)"+++", 3);
        modem.delay_ms(1000);

        // end transaction
        char torcv[1000] = {0};
        res = sim800_tcp_req_end(&modem, torcv, sizeof(torcv), true);
        printf("sim800_tcp_req_end , res = %u \n", res);
        if (res != SIM800L_OK)
            goto end;

        // print result
        printf("RECEIVED:\n\"%s\"\n\n", torcv);
    }
    */

    // MAKE POST REQUEST WITH SSL
    // check your posts in https://webhook.site/#!/02d6d12f-7a90-46bc-889f-184ec54f53cb
    // Check if this url path is still alive, else change it for a new one
    /*
    res = sim800_wait_until_detect_signal(&modem, 10000);
    printf("sim800_wait_until_detect_signal, res = %u\n", res);
    if (res != SIM800L_OK)
        goto end;

    res = sim800_link_net(&modem, "entel", "", "", true);
    printf("sim800_link_net , res = %u\n\n", res);
    if (res != SIM800L_OK)
        goto end;

    // make 3 post requests
    for (int i = 0; i < 3; i++)
    {
        printf("\n\r\n\r");

        // start transaction
        res = sim800_tcp_req_start(&modem, "webhook.site", 443, true, true);
        printf("sim800_tcp_req_start , res = %u \n", res);
        if (res != SIM800L_OK)
        {
            sim800_tcp_req_end(&modem, NULL, 0, false);
            goto end;
        }

        // send content
        modem.flush();
        char content[] = "POST /02d6d12f-7a90-46bc-889f-184ec54f53cb HTTP/1.1\n"
                         "Host: webhook.site\n"
                         "Content-Type: application/json\n"
                         "Content-Length: 10\n"
                         "Connection: close\n\n"
                         "hola mundo"
                         "\n\n";
        modem.write((uint8_t *)content, strlen(content));

        // mandatory part in transparent mode
        modem.delay_ms(1000);
        modem.write((uint8_t *)"+++", 3);
        modem.delay_ms(1000);

        // end transaction
        char torcv[1000] = {0};
        res = sim800_tcp_req_end(&modem, torcv, sizeof(torcv), true);
        printf("sim800_tcp_req_end , res = %u \n", res);
        if (res != SIM800L_OK)
            goto end;

        // print result
        printf("RECEIVED:\n\"%s\"\n\n", torcv);
    }
    */

    // GPS positioning

    res = sim800_gps_on(&modem);
    printf("sim800_gps_on , res = %u\n", res);
    if (res != SIM800L_OK)
        goto end;

    while (1)
    {
        int fixStatus = -1;
        double latitude = -1.0;
        double longitude = -1.0;
        res = sim800_gps_read(&modem, &fixStatus, &latitude, &longitude);
        printf("sim800_gps_read , res = %u , fix=%i , lat=%f , lon=%f\n", res, fixStatus, latitude, longitude);
      /*  if (res != SIM800L_OK)
            goto end;
*/
        sleep(1);
    }

end:
    printf("\n\r\n\r");
    sim800L_deinit(&modem);
    printf("ending: \n\r");
}
