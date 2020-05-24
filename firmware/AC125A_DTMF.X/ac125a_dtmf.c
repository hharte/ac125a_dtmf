/*************************************************************************
 *                                                                       *
 * Copyright (c) 2020 Howard M. Harte, WZ2Q.                             *
 * http://www.magicandroidapps.com                                       *
 *                                                                       *
 * Permission is hereby granted, free of charge, to any person obtaining *
 * a copy of this software and associated documentation files (the       *
 * "Software"), to deal in the Software without restriction, including   *
 * without limitation the rights to use, copy, modify, merge, publish,   *
 * distribute, sublicense, and/or sell copies of the Software, and to    *
 * permit persons to whom the Software is furnished to do so, subject to *
 * the following conditions:                                             *
 *                                                                       *
 * The above copyright notice and this permission notice shall be        *
 * included in all copies or substantial portions of the Software.       *
 *                                                                       *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,       *
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF    *
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND                 *
 * NONINFRINGEMENT. IN NO EVENT SHALL HOWARD M. HARTE BE LIABLE FOR ANY  *
 * CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,  *
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE     *
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                *
 *                                                                       *
 * Except as contained in this notice, the name of Howard M. Harte shall *
 * not be used in advertising or otherwise to promote the sale, use or   *
 * other dealings in this Software without prior written authorization   *
 * Howard M. Harte.                                                      *
 *                                                                       *
 * Module Description:                                                   *
 * AC125A DTMF to Pulse Counting Relay Driver for the OKI AC125A         *
 * Crossbar PBX                                                          *
 *                                                                       *
 * MPLAB-X IDE v5.30
 * MPLAB Code Configurator v3.95.0                                                          *
 *************************************************************************/

#include  <ctype.h>
#include  <stdio.h>
#include  <string.h>
#include  <stdint.h>
#include "mcc_generated_files/mcc.h"

extern char getch(void);

/* Function Prototypes */
void DTMF0_ISR(void);
void _delay_ms(unsigned short ms);
uint8_t dial_digit(uint8_t or, uint8_t dtmf_digit);
void pio_write(uint16_t data);
void operate_relays(uint8_t or, uint8_t pc_relays);
void EUSART1_Write_String(char *str);

#ifndef FALSE
#define FALSE  (0)
#define TRUE  (1)
#endif


/* SN74HC595 8-Bit Shift Register GPIOs */
#define SSR_SER_DATA        PORTAbits.RA0   /* Serial Data */
#define SSR_OE_N            PORTAbits.RA1   /* Output Enable */
#define SSR_RCLK            PORTAbits.RA2   /* Register strobe */
#define SSR_SRCLK           PORTAbits.RA3   /* Shift register clock */
#define SSR_SRCLR_N         PORTAbits.RA4   /* Register clear */

/* MT8870 DTMF Receiver (OR0) */
#define DTMF0_StD           PORTBbits.RB0
#define DTMF0_Q0            PORTAbits.RA5
#define DTMF0_Q1            PORTEbits.RE2
#define DTMF0_Q2            PORTEbits.RE1
#define DTMF0_Q3            PORTEbits.RE0

/* MT8870 DTMF Receiver (OR1) */
#define DTMF1_StD           PORTBbits.RB1
#define DTMF1_Q0            PORTDbits.RD5
#define DTMF1_Q1            PORTDbits.RD6
#define DTMF1_Q2            PORTDbits.RD7
#define DTMF1_Q3            PORTBbits.RB2

#define OR0_STATUS_N        PORTCbits.RC0
#define OR1_STATUS_N        PORTCbits.RC1


const char			menu[] = "1. Activate relay\n\r" \
							 "2. Deactivate relay\n\r" \
                             "3. Reset relays\n\r" \
							 "r. Select Relay\n\r" \
                             "d. Dial digit (OR0)\n\r" \
                             "f. Dial digit (OR1)\n\r" \
                             "t. Test DTMF Converter\n\r" \
							 "0. Select Originating Register\n\r"
							 "\n> ";

volatile uint8_t dtmf0_digit = 0;
volatile uint8_t dtmf1_digit = 0;


void DTMF0_ISR(void)
{
    if (DTMF0_StD == 1) {   // Store DTMF digit to FIFO on rising edge of DTMF_ST_D
        dtmf0_digit = DTMF0_Q0 | (DTMF0_Q1 << 1) | (DTMF0_Q2 << 2) | (DTMF0_Q3 << 3);
    }
}

void DTMF1_ISR(void)
{
    if (DTMF1_StD == 1) {   // Store DTMF digit to FIFO on rising edge of DTMF_ST_D
        dtmf1_digit = DTMF1_Q0 | (DTMF1_Q1 << 1) | (DTMF1_Q2 << 2) | (DTMF1_Q3 << 3);
    }
}

uint16_t relay_state = 0;

uint8_t ac125a_main(uint8_t rcon_copy)
{
    uint8_t cur_relay = 0;
    uint8_t cur_digit = 0;
    uint8_t cur_orig_register = 0;
    uint16_t selected_relay = 0;
    int i;
    char c;
    
    relay_state = 0;
    pio_write(relay_state);
    
    /* Register interrupt handlers for DTMF Receivers */
    INT0_SetInterruptHandler (DTMF0_ISR);
    INT1_SetInterruptHandler (DTMF1_ISR);
    
    /* Reset 74HC595 shift registers */
    SSR_SRCLR_N = 0;
    
    puts("OKI AC125A DTMF Converter\n\r(c) 2020 Howard M. Harte\n\r");
    EUSART1_Write_String("OKI AC125A DTMF Converter\n\r(c) 2020 Howard M. Harte\n\rSerial Port\n\r");
    
    /* Take 74HC595 shift registers out of reset */
    SSR_SRCLR_N = 1;
    
	while (1) {
        
        printf("\n\rCurrent OR %d\n\r", cur_orig_register);
		printf("RCON: %02x\n\r", rcon_copy);
        printf("Current relay %c\n\r", cur_relay + 'A');
        printf("Relay bits: 0x%04x\n\r", relay_state);
        printf("OR0 Status: %s, digit: %d\n\r", OR0_STATUS_N ? "Idle" : "BUSY", dtmf0_digit);
        printf("OR1 Status: %s, digit: %d\n\r", OR1_STATUS_N ? "Idle" : "BUSY", dtmf1_digit);

        selected_relay = 1 << cur_relay;
        if (cur_orig_register == 1) {
            selected_relay <<= 8; //selected_relay << 8;
        }
        
		printf("Selected Relay bit: 0x%04x\n\r", selected_relay);
        printf(menu);
		c = getch();
		printf("%c\n\n\r", c);
        
		switch (c) {
		case '1':
            relay_state |= selected_relay;
			pio_write(relay_state);
            break;
		case '2':
			relay_state &= ~(selected_relay);
			pio_write(relay_state);
            break;
   		case '3':
			relay_state = 0;
            pio_write(relay_state);
            break;
   		case '4':
			relay_state = 0;
            pio_write(relay_state);
            break;
        case 'd':
			printf("Which digit (0-9?) ");
			c = getch();
			cur_digit = c - '0';
			if (cur_digit <= 9) {
				printf("Dialing %c.\n\r", c);
                if (cur_digit == 0) cur_digit = 10;
                dial_digit(0, cur_digit);
			} else {
				printf("%c - Invalid digit.\n\r", c);
			}
			break;
        case 'f':
			printf("Which digit (0-9?) ");
			c = getch();
			cur_digit = c - '0';
			if (cur_digit <= 9) {
				printf("Dialing %c.\n\r", c);
                if (cur_digit == 0) cur_digit = 10;
                dial_digit(1, cur_digit);
			} else {
				printf("%c - Invalid digit.\n\r", c);
			}
			break;
        case '0':
			printf("Which originating register (0, 1?) ");
			c = getch();
			cur_orig_register = c - '0';
			if (cur_orig_register > 0 && cur_orig_register <= 4) {
				printf("%c - OR selected.\n\r", c);
			} else {
				printf("%c - Invalid OR, defaulting to 0.\n\r", c);
				cur_orig_register = 0;
			}
			break;
        case 'r':
			printf("Which relay (a-f?) ");
			c = getch();
            c = tolower(c);
			cur_relay = c - 'a';
			if (cur_relay < 6) {
				printf("%c - Relay selected.\n\r", c);
			} else {
				printf("%c - Invalid relay, defaulting to A.\n\r", c);
				cur_relay = 0;
			}
			break;
        case 't':
            printf("Dial digits, * or # to terminate.\n\r");
			while((dtmf0_digit != 11) && (dtmf0_digit != 12) &&
                  (dtmf1_digit != 11) && (dtmf1_digit != 12)) {
                if (dtmf0_digit != 0 ) {
                    uint8_t c = dtmf0_digit;
                    dtmf0_digit = 0;
                    dial_digit(0, c);
                    printf("OR0: Dialed %d\n\r", c);
                } else if (dtmf1_digit != 0 ) {
                    uint8_t c = dtmf1_digit;
                    dtmf1_digit = 0;
                    dial_digit(1, c);
                    printf("OR1: Dialed %d\n\r", c);
                }
            }
			break;
		default:
			printf("Invalid command '%c'", c);
			break;
		}
	}
    return 0;
}

/* The interface from the OKI Originating Registers (ORs) consists
 * of a STart output which is grounded when the B relay in the OR
 * operates.  We will not use that in this design, although it would
 * be nice to use it to reset the DTMF converter.
 *
 * Additionally, there are six outputs from the DTMF converter to
 * the OKI OR.  Five are pulse counting relay outputs (PA-PE) and the
 * sixth is a C relay output, used to store the pulse counting relays
 * into the reed relays of the OR.
 */
#define RELAY_PA    (1 << 0)
#define RELAY_PB    (1 << 1)
#define RELAY_PC    (1 << 2)
#define RELAY_PD    (1 << 3)
#define RELAY_PE    (1 << 4)
#define RELAY_C     (1 << 5)

/* DTMF Digit to OKI OR Pulse Counting Relay Mapping */
const unsigned char pc_relay_table[16] = { 
    0,                                                      // D (Not valid)
    RELAY_PA | RELAY_PB,                                    // 1
    RELAY_PC,                                               // 2
    RELAY_PA | RELAY_PB | RELAY_PC | RELAY_PD,              // 3
    RELAY_PC | RELAY_PD,                                    // 4
    RELAY_PA | RELAY_PB | RELAY_PD,                         // 5
    RELAY_PE,                                               // 6
    RELAY_PA | RELAY_PB | RELAY_PE,                         // 7
    RELAY_PC | RELAY_PE,                                    // 8
    RELAY_PA | RELAY_PB | RELAY_PC | RELAY_PD | RELAY_PE,   // 9
    RELAY_PC | RELAY_PD | RELAY_PE,                         // 0
    0,                                                      // * (Not valid)
    0,                                                      // # (Not valid)
    0,                                                      // A (Not valid)
    0,                                                      // B (Not valid)
    0                                                       // C (Not valid)
};

uint8_t dial_digit(uint8_t or, uint8_t dtmf_digit) {
    uint8_t  pc_relays;
    
    pc_relays = pc_relay_table[dtmf_digit];
 
    /* If valid (0-9) DTMF digit, set appropriate relays */
    if (pc_relays > 0) {
        /* Actuate PA-PE and C relays */
        operate_relays(or, pc_relays | RELAY_C);
        _delay_ms(300);

        /* Release PA-PE and C relays */
        operate_relays(or, 0);
    }
    
    return (0);
}

void operate_relays(uint8_t or, uint8_t pc_relays)
{
    if (or == 0) {
        relay_state &= 0xFF00;
        relay_state |= pc_relays;
    } else {
        relay_state &= 0x00FF;
        relay_state |= (pc_relays << 8);        
    }
#ifdef DEBUG
    printf("OR=%d, pc_relays=%02x, relay_state=%04x\n\r", or, pc_relays, relay_state);
#endif /* DEBUG */
    pio_write(relay_state);
}       

/* Write 16 bits to the 74HC595 Shift Registers */
void pio_write(uint16_t data)
{
    int i;
    SSR_SRCLK = 0;
    SSR_RCLK = 0;

    for (i=0; i < 16; i++) {
        SSR_SER_DATA = (data & 0x8000) >> 15;
        data <<= 1;
        SSR_SRCLK = 1;
        SSR_SRCLK = 0;
    }   

    SSR_RCLK = 1;
    SSR_RCLK = 0;
    SSR_OE_N = 0;    

}

void _delay_ms(unsigned short ms)
{   
    unsigned char i, j;
    do {
        i = 4;
        j = 200;
        do
        {
            while (--j);
        } while (--i);
    } while (--ms);
}

void EUSART1_Write_String(char *str)
{
    while(*str) {
        EUSART1_Write(*str++);
    }
}