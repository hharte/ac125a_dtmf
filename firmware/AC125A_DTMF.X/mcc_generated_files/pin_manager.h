/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.78.1
        Device            :  PIC18F45K50
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.10 and above
        MPLAB 	          :  MPLAB X 5.30	
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set SSR_SER_DATA aliases
#define SSR_SER_DATA_TRIS                 TRISAbits.TRISA0
#define SSR_SER_DATA_LAT                  LATAbits.LATA0
#define SSR_SER_DATA_PORT                 PORTAbits.RA0
#define SSR_SER_DATA_ANS                  ANSELAbits.ANSA0
#define SSR_SER_DATA_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define SSR_SER_DATA_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define SSR_SER_DATA_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define SSR_SER_DATA_GetValue()           PORTAbits.RA0
#define SSR_SER_DATA_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define SSR_SER_DATA_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define SSR_SER_DATA_SetAnalogMode()      do { ANSELAbits.ANSA0 = 1; } while(0)
#define SSR_SER_DATA_SetDigitalMode()     do { ANSELAbits.ANSA0 = 0; } while(0)

// get/set SSR_OE_N aliases
#define SSR_OE_N_TRIS                 TRISAbits.TRISA1
#define SSR_OE_N_LAT                  LATAbits.LATA1
#define SSR_OE_N_PORT                 PORTAbits.RA1
#define SSR_OE_N_ANS                  ANSELAbits.ANSA1
#define SSR_OE_N_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define SSR_OE_N_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define SSR_OE_N_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define SSR_OE_N_GetValue()           PORTAbits.RA1
#define SSR_OE_N_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define SSR_OE_N_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define SSR_OE_N_SetAnalogMode()      do { ANSELAbits.ANSA1 = 1; } while(0)
#define SSR_OE_N_SetDigitalMode()     do { ANSELAbits.ANSA1 = 0; } while(0)

// get/set SSR_RCLK aliases
#define SSR_RCLK_TRIS                 TRISAbits.TRISA2
#define SSR_RCLK_LAT                  LATAbits.LATA2
#define SSR_RCLK_PORT                 PORTAbits.RA2
#define SSR_RCLK_ANS                  ANSELAbits.ANSA2
#define SSR_RCLK_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define SSR_RCLK_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define SSR_RCLK_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define SSR_RCLK_GetValue()           PORTAbits.RA2
#define SSR_RCLK_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define SSR_RCLK_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define SSR_RCLK_SetAnalogMode()      do { ANSELAbits.ANSA2 = 1; } while(0)
#define SSR_RCLK_SetDigitalMode()     do { ANSELAbits.ANSA2 = 0; } while(0)

// get/set SSR_SRCLK aliases
#define SSR_SRCLK_TRIS                 TRISAbits.TRISA3
#define SSR_SRCLK_LAT                  LATAbits.LATA3
#define SSR_SRCLK_PORT                 PORTAbits.RA3
#define SSR_SRCLK_ANS                  ANSELAbits.ANSA3
#define SSR_SRCLK_SetHigh()            do { LATAbits.LATA3 = 1; } while(0)
#define SSR_SRCLK_SetLow()             do { LATAbits.LATA3 = 0; } while(0)
#define SSR_SRCLK_Toggle()             do { LATAbits.LATA3 = ~LATAbits.LATA3; } while(0)
#define SSR_SRCLK_GetValue()           PORTAbits.RA3
#define SSR_SRCLK_SetDigitalInput()    do { TRISAbits.TRISA3 = 1; } while(0)
#define SSR_SRCLK_SetDigitalOutput()   do { TRISAbits.TRISA3 = 0; } while(0)
#define SSR_SRCLK_SetAnalogMode()      do { ANSELAbits.ANSA3 = 1; } while(0)
#define SSR_SRCLK_SetDigitalMode()     do { ANSELAbits.ANSA3 = 0; } while(0)

// get/set SSR_SRCLR_N aliases
#define SSR_SRCLR_N_TRIS                 TRISAbits.TRISA4
#define SSR_SRCLR_N_LAT                  LATAbits.LATA4
#define SSR_SRCLR_N_PORT                 PORTAbits.RA4
#define SSR_SRCLR_N_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define SSR_SRCLR_N_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define SSR_SRCLR_N_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define SSR_SRCLR_N_GetValue()           PORTAbits.RA4
#define SSR_SRCLR_N_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define SSR_SRCLR_N_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)

// get/set DTMF0_Q0 aliases
#define DTMF0_Q0_TRIS                 TRISAbits.TRISA5
#define DTMF0_Q0_LAT                  LATAbits.LATA5
#define DTMF0_Q0_PORT                 PORTAbits.RA5
#define DTMF0_Q0_ANS                  ANSELAbits.ANSA5
#define DTMF0_Q0_SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define DTMF0_Q0_SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define DTMF0_Q0_Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define DTMF0_Q0_GetValue()           PORTAbits.RA5
#define DTMF0_Q0_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define DTMF0_Q0_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define DTMF0_Q0_SetAnalogMode()      do { ANSELAbits.ANSA5 = 1; } while(0)
#define DTMF0_Q0_SetDigitalMode()     do { ANSELAbits.ANSA5 = 0; } while(0)

// get/set LCD_DB5 aliases
#define LCD_DB5_TRIS                 TRISAbits.TRISA6
#define LCD_DB5_LAT                  LATAbits.LATA6
#define LCD_DB5_PORT                 PORTAbits.RA6
#define LCD_DB5_SetHigh()            do { LATAbits.LATA6 = 1; } while(0)
#define LCD_DB5_SetLow()             do { LATAbits.LATA6 = 0; } while(0)
#define LCD_DB5_Toggle()             do { LATAbits.LATA6 = ~LATAbits.LATA6; } while(0)
#define LCD_DB5_GetValue()           PORTAbits.RA6
#define LCD_DB5_SetDigitalInput()    do { TRISAbits.TRISA6 = 1; } while(0)
#define LCD_DB5_SetDigitalOutput()   do { TRISAbits.TRISA6 = 0; } while(0)

// get/set DTMF0_StD aliases
#define DTMF0_StD_TRIS                 TRISBbits.TRISB0
#define DTMF0_StD_LAT                  LATBbits.LATB0
#define DTMF0_StD_PORT                 PORTBbits.RB0
#define DTMF0_StD_WPU                  WPUBbits.WPUB0
#define DTMF0_StD_ANS                  ANSELBbits.ANSB0
#define DTMF0_StD_SetHigh()            do { LATBbits.LATB0 = 1; } while(0)
#define DTMF0_StD_SetLow()             do { LATBbits.LATB0 = 0; } while(0)
#define DTMF0_StD_Toggle()             do { LATBbits.LATB0 = ~LATBbits.LATB0; } while(0)
#define DTMF0_StD_GetValue()           PORTBbits.RB0
#define DTMF0_StD_SetDigitalInput()    do { TRISBbits.TRISB0 = 1; } while(0)
#define DTMF0_StD_SetDigitalOutput()   do { TRISBbits.TRISB0 = 0; } while(0)
#define DTMF0_StD_SetPullup()          do { WPUBbits.WPUB0 = 1; } while(0)
#define DTMF0_StD_ResetPullup()        do { WPUBbits.WPUB0 = 0; } while(0)
#define DTMF0_StD_SetAnalogMode()      do { ANSELBbits.ANSB0 = 1; } while(0)
#define DTMF0_StD_SetDigitalMode()     do { ANSELBbits.ANSB0 = 0; } while(0)

// get/set DTMF1_StD aliases
#define DTMF1_StD_TRIS                 TRISBbits.TRISB1
#define DTMF1_StD_LAT                  LATBbits.LATB1
#define DTMF1_StD_PORT                 PORTBbits.RB1
#define DTMF1_StD_WPU                  WPUBbits.WPUB1
#define DTMF1_StD_ANS                  ANSELBbits.ANSB1
#define DTMF1_StD_SetHigh()            do { LATBbits.LATB1 = 1; } while(0)
#define DTMF1_StD_SetLow()             do { LATBbits.LATB1 = 0; } while(0)
#define DTMF1_StD_Toggle()             do { LATBbits.LATB1 = ~LATBbits.LATB1; } while(0)
#define DTMF1_StD_GetValue()           PORTBbits.RB1
#define DTMF1_StD_SetDigitalInput()    do { TRISBbits.TRISB1 = 1; } while(0)
#define DTMF1_StD_SetDigitalOutput()   do { TRISBbits.TRISB1 = 0; } while(0)
#define DTMF1_StD_SetPullup()          do { WPUBbits.WPUB1 = 1; } while(0)
#define DTMF1_StD_ResetPullup()        do { WPUBbits.WPUB1 = 0; } while(0)
#define DTMF1_StD_SetAnalogMode()      do { ANSELBbits.ANSB1 = 1; } while(0)
#define DTMF1_StD_SetDigitalMode()     do { ANSELBbits.ANSB1 = 0; } while(0)

// get/set DTMF1_Q3 aliases
#define DTMF1_Q3_TRIS                 TRISBbits.TRISB2
#define DTMF1_Q3_LAT                  LATBbits.LATB2
#define DTMF1_Q3_PORT                 PORTBbits.RB2
#define DTMF1_Q3_WPU                  WPUBbits.WPUB2
#define DTMF1_Q3_ANS                  ANSELBbits.ANSB2
#define DTMF1_Q3_SetHigh()            do { LATBbits.LATB2 = 1; } while(0)
#define DTMF1_Q3_SetLow()             do { LATBbits.LATB2 = 0; } while(0)
#define DTMF1_Q3_Toggle()             do { LATBbits.LATB2 = ~LATBbits.LATB2; } while(0)
#define DTMF1_Q3_GetValue()           PORTBbits.RB2
#define DTMF1_Q3_SetDigitalInput()    do { TRISBbits.TRISB2 = 1; } while(0)
#define DTMF1_Q3_SetDigitalOutput()   do { TRISBbits.TRISB2 = 0; } while(0)
#define DTMF1_Q3_SetPullup()          do { WPUBbits.WPUB2 = 1; } while(0)
#define DTMF1_Q3_ResetPullup()        do { WPUBbits.WPUB2 = 0; } while(0)
#define DTMF1_Q3_SetAnalogMode()      do { ANSELBbits.ANSB2 = 1; } while(0)
#define DTMF1_Q3_SetDigitalMode()     do { ANSELBbits.ANSB2 = 0; } while(0)

// get/set OR0_STATUS_N aliases
#define OR0_STATUS_N_TRIS                 TRISCbits.TRISC0
#define OR0_STATUS_N_LAT                  LATCbits.LATC0
#define OR0_STATUS_N_PORT                 PORTCbits.RC0
#define OR0_STATUS_N_SetHigh()            do { LATCbits.LATC0 = 1; } while(0)
#define OR0_STATUS_N_SetLow()             do { LATCbits.LATC0 = 0; } while(0)
#define OR0_STATUS_N_Toggle()             do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define OR0_STATUS_N_GetValue()           PORTCbits.RC0
#define OR0_STATUS_N_SetDigitalInput()    do { TRISCbits.TRISC0 = 1; } while(0)
#define OR0_STATUS_N_SetDigitalOutput()   do { TRISCbits.TRISC0 = 0; } while(0)

// get/set OR1_STATUS_N aliases
#define OR1_STATUS_N_TRIS                 TRISCbits.TRISC1
#define OR1_STATUS_N_LAT                  LATCbits.LATC1
#define OR1_STATUS_N_PORT                 PORTCbits.RC1
#define OR1_STATUS_N_SetHigh()            do { LATCbits.LATC1 = 1; } while(0)
#define OR1_STATUS_N_SetLow()             do { LATCbits.LATC1 = 0; } while(0)
#define OR1_STATUS_N_Toggle()             do { LATCbits.LATC1 = ~LATCbits.LATC1; } while(0)
#define OR1_STATUS_N_GetValue()           PORTCbits.RC1
#define OR1_STATUS_N_SetDigitalInput()    do { TRISCbits.TRISC1 = 1; } while(0)
#define OR1_STATUS_N_SetDigitalOutput()   do { TRISCbits.TRISC1 = 0; } while(0)

// get/set RC6 procedures
#define RC6_SetHigh()            do { LATCbits.LATC6 = 1; } while(0)
#define RC6_SetLow()             do { LATCbits.LATC6 = 0; } while(0)
#define RC6_Toggle()             do { LATCbits.LATC6 = ~LATCbits.LATC6; } while(0)
#define RC6_GetValue()              PORTCbits.RC6
#define RC6_SetDigitalInput()    do { TRISCbits.TRISC6 = 1; } while(0)
#define RC6_SetDigitalOutput()   do { TRISCbits.TRISC6 = 0; } while(0)
#define RC6_SetAnalogMode()         do { ANSELCbits.ANSC6 = 1; } while(0)
#define RC6_SetDigitalMode()        do { ANSELCbits.ANSC6 = 0; } while(0)

// get/set RC7 procedures
#define RC7_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define RC7_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define RC7_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define RC7_GetValue()              PORTCbits.RC7
#define RC7_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define RC7_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)
#define RC7_SetAnalogMode()         do { ANSELCbits.ANSC7 = 1; } while(0)
#define RC7_SetDigitalMode()        do { ANSELCbits.ANSC7 = 0; } while(0)

// get/set LCD_DB7 aliases
#define LCD_DB7_TRIS                 TRISDbits.TRISD0
#define LCD_DB7_LAT                  LATDbits.LATD0
#define LCD_DB7_PORT                 PORTDbits.RD0
#define LCD_DB7_ANS                  ANSELDbits.ANSD0
#define LCD_DB7_SetHigh()            do { LATDbits.LATD0 = 1; } while(0)
#define LCD_DB7_SetLow()             do { LATDbits.LATD0 = 0; } while(0)
#define LCD_DB7_Toggle()             do { LATDbits.LATD0 = ~LATDbits.LATD0; } while(0)
#define LCD_DB7_GetValue()           PORTDbits.RD0
#define LCD_DB7_SetDigitalInput()    do { TRISDbits.TRISD0 = 1; } while(0)
#define LCD_DB7_SetDigitalOutput()   do { TRISDbits.TRISD0 = 0; } while(0)
#define LCD_DB7_SetAnalogMode()      do { ANSELDbits.ANSD0 = 1; } while(0)
#define LCD_DB7_SetDigitalMode()     do { ANSELDbits.ANSD0 = 0; } while(0)

// get/set LCD_DB6 aliases
#define LCD_DB6_TRIS                 TRISDbits.TRISD1
#define LCD_DB6_LAT                  LATDbits.LATD1
#define LCD_DB6_PORT                 PORTDbits.RD1
#define LCD_DB6_ANS                  ANSELDbits.ANSD1
#define LCD_DB6_SetHigh()            do { LATDbits.LATD1 = 1; } while(0)
#define LCD_DB6_SetLow()             do { LATDbits.LATD1 = 0; } while(0)
#define LCD_DB6_Toggle()             do { LATDbits.LATD1 = ~LATDbits.LATD1; } while(0)
#define LCD_DB6_GetValue()           PORTDbits.RD1
#define LCD_DB6_SetDigitalInput()    do { TRISDbits.TRISD1 = 1; } while(0)
#define LCD_DB6_SetDigitalOutput()   do { TRISDbits.TRISD1 = 0; } while(0)
#define LCD_DB6_SetAnalogMode()      do { ANSELDbits.ANSD1 = 1; } while(0)
#define LCD_DB6_SetDigitalMode()     do { ANSELDbits.ANSD1 = 0; } while(0)

// get/set LCD_RS aliases
#define LCD_RS_TRIS                 TRISDbits.TRISD2
#define LCD_RS_LAT                  LATDbits.LATD2
#define LCD_RS_PORT                 PORTDbits.RD2
#define LCD_RS_ANS                  ANSELDbits.ANSD2
#define LCD_RS_SetHigh()            do { LATDbits.LATD2 = 1; } while(0)
#define LCD_RS_SetLow()             do { LATDbits.LATD2 = 0; } while(0)
#define LCD_RS_Toggle()             do { LATDbits.LATD2 = ~LATDbits.LATD2; } while(0)
#define LCD_RS_GetValue()           PORTDbits.RD2
#define LCD_RS_SetDigitalInput()    do { TRISDbits.TRISD2 = 1; } while(0)
#define LCD_RS_SetDigitalOutput()   do { TRISDbits.TRISD2 = 0; } while(0)
#define LCD_RS_SetAnalogMode()      do { ANSELDbits.ANSD2 = 1; } while(0)
#define LCD_RS_SetDigitalMode()     do { ANSELDbits.ANSD2 = 0; } while(0)

// get/set LCD_RW aliases
#define LCD_RW_TRIS                 TRISDbits.TRISD3
#define LCD_RW_LAT                  LATDbits.LATD3
#define LCD_RW_PORT                 PORTDbits.RD3
#define LCD_RW_ANS                  ANSELDbits.ANSD3
#define LCD_RW_SetHigh()            do { LATDbits.LATD3 = 1; } while(0)
#define LCD_RW_SetLow()             do { LATDbits.LATD3 = 0; } while(0)
#define LCD_RW_Toggle()             do { LATDbits.LATD3 = ~LATDbits.LATD3; } while(0)
#define LCD_RW_GetValue()           PORTDbits.RD3
#define LCD_RW_SetDigitalInput()    do { TRISDbits.TRISD3 = 1; } while(0)
#define LCD_RW_SetDigitalOutput()   do { TRISDbits.TRISD3 = 0; } while(0)
#define LCD_RW_SetAnalogMode()      do { ANSELDbits.ANSD3 = 1; } while(0)
#define LCD_RW_SetDigitalMode()     do { ANSELDbits.ANSD3 = 0; } while(0)

// get/set LCD_E aliases
#define LCD_E_TRIS                 TRISDbits.TRISD4
#define LCD_E_LAT                  LATDbits.LATD4
#define LCD_E_PORT                 PORTDbits.RD4
#define LCD_E_ANS                  ANSELDbits.ANSD4
#define LCD_E_SetHigh()            do { LATDbits.LATD4 = 1; } while(0)
#define LCD_E_SetLow()             do { LATDbits.LATD4 = 0; } while(0)
#define LCD_E_Toggle()             do { LATDbits.LATD4 = ~LATDbits.LATD4; } while(0)
#define LCD_E_GetValue()           PORTDbits.RD4
#define LCD_E_SetDigitalInput()    do { TRISDbits.TRISD4 = 1; } while(0)
#define LCD_E_SetDigitalOutput()   do { TRISDbits.TRISD4 = 0; } while(0)
#define LCD_E_SetAnalogMode()      do { ANSELDbits.ANSD4 = 1; } while(0)
#define LCD_E_SetDigitalMode()     do { ANSELDbits.ANSD4 = 0; } while(0)

// get/set DTMF1_Q0 aliases
#define DTMF1_Q0_TRIS                 TRISDbits.TRISD5
#define DTMF1_Q0_LAT                  LATDbits.LATD5
#define DTMF1_Q0_PORT                 PORTDbits.RD5
#define DTMF1_Q0_ANS                  ANSELDbits.ANSD5
#define DTMF1_Q0_SetHigh()            do { LATDbits.LATD5 = 1; } while(0)
#define DTMF1_Q0_SetLow()             do { LATDbits.LATD5 = 0; } while(0)
#define DTMF1_Q0_Toggle()             do { LATDbits.LATD5 = ~LATDbits.LATD5; } while(0)
#define DTMF1_Q0_GetValue()           PORTDbits.RD5
#define DTMF1_Q0_SetDigitalInput()    do { TRISDbits.TRISD5 = 1; } while(0)
#define DTMF1_Q0_SetDigitalOutput()   do { TRISDbits.TRISD5 = 0; } while(0)
#define DTMF1_Q0_SetAnalogMode()      do { ANSELDbits.ANSD5 = 1; } while(0)
#define DTMF1_Q0_SetDigitalMode()     do { ANSELDbits.ANSD5 = 0; } while(0)

// get/set DTMF1_Q1 aliases
#define DTMF1_Q1_TRIS                 TRISDbits.TRISD6
#define DTMF1_Q1_LAT                  LATDbits.LATD6
#define DTMF1_Q1_PORT                 PORTDbits.RD6
#define DTMF1_Q1_ANS                  ANSELDbits.ANSD6
#define DTMF1_Q1_SetHigh()            do { LATDbits.LATD6 = 1; } while(0)
#define DTMF1_Q1_SetLow()             do { LATDbits.LATD6 = 0; } while(0)
#define DTMF1_Q1_Toggle()             do { LATDbits.LATD6 = ~LATDbits.LATD6; } while(0)
#define DTMF1_Q1_GetValue()           PORTDbits.RD6
#define DTMF1_Q1_SetDigitalInput()    do { TRISDbits.TRISD6 = 1; } while(0)
#define DTMF1_Q1_SetDigitalOutput()   do { TRISDbits.TRISD6 = 0; } while(0)
#define DTMF1_Q1_SetAnalogMode()      do { ANSELDbits.ANSD6 = 1; } while(0)
#define DTMF1_Q1_SetDigitalMode()     do { ANSELDbits.ANSD6 = 0; } while(0)

// get/set DTMF1_Q2 aliases
#define DTMF1_Q2_TRIS                 TRISDbits.TRISD7
#define DTMF1_Q2_LAT                  LATDbits.LATD7
#define DTMF1_Q2_PORT                 PORTDbits.RD7
#define DTMF1_Q2_ANS                  ANSELDbits.ANSD7
#define DTMF1_Q2_SetHigh()            do { LATDbits.LATD7 = 1; } while(0)
#define DTMF1_Q2_SetLow()             do { LATDbits.LATD7 = 0; } while(0)
#define DTMF1_Q2_Toggle()             do { LATDbits.LATD7 = ~LATDbits.LATD7; } while(0)
#define DTMF1_Q2_GetValue()           PORTDbits.RD7
#define DTMF1_Q2_SetDigitalInput()    do { TRISDbits.TRISD7 = 1; } while(0)
#define DTMF1_Q2_SetDigitalOutput()   do { TRISDbits.TRISD7 = 0; } while(0)
#define DTMF1_Q2_SetAnalogMode()      do { ANSELDbits.ANSD7 = 1; } while(0)
#define DTMF1_Q2_SetDigitalMode()     do { ANSELDbits.ANSD7 = 0; } while(0)

// get/set DTMF0_Q3 aliases
#define DTMF0_Q3_TRIS                 TRISEbits.TRISE0
#define DTMF0_Q3_LAT                  LATEbits.LATE0
#define DTMF0_Q3_PORT                 PORTEbits.RE0
#define DTMF0_Q3_ANS                  ANSELEbits.ANSE0
#define DTMF0_Q3_SetHigh()            do { LATEbits.LATE0 = 1; } while(0)
#define DTMF0_Q3_SetLow()             do { LATEbits.LATE0 = 0; } while(0)
#define DTMF0_Q3_Toggle()             do { LATEbits.LATE0 = ~LATEbits.LATE0; } while(0)
#define DTMF0_Q3_GetValue()           PORTEbits.RE0
#define DTMF0_Q3_SetDigitalInput()    do { TRISEbits.TRISE0 = 1; } while(0)
#define DTMF0_Q3_SetDigitalOutput()   do { TRISEbits.TRISE0 = 0; } while(0)
#define DTMF0_Q3_SetAnalogMode()      do { ANSELEbits.ANSE0 = 1; } while(0)
#define DTMF0_Q3_SetDigitalMode()     do { ANSELEbits.ANSE0 = 0; } while(0)

// get/set DTMF0_Q2 aliases
#define DTMF0_Q2_TRIS                 TRISEbits.TRISE1
#define DTMF0_Q2_LAT                  LATEbits.LATE1
#define DTMF0_Q2_PORT                 PORTEbits.RE1
#define DTMF0_Q2_ANS                  ANSELEbits.ANSE1
#define DTMF0_Q2_SetHigh()            do { LATEbits.LATE1 = 1; } while(0)
#define DTMF0_Q2_SetLow()             do { LATEbits.LATE1 = 0; } while(0)
#define DTMF0_Q2_Toggle()             do { LATEbits.LATE1 = ~LATEbits.LATE1; } while(0)
#define DTMF0_Q2_GetValue()           PORTEbits.RE1
#define DTMF0_Q2_SetDigitalInput()    do { TRISEbits.TRISE1 = 1; } while(0)
#define DTMF0_Q2_SetDigitalOutput()   do { TRISEbits.TRISE1 = 0; } while(0)
#define DTMF0_Q2_SetAnalogMode()      do { ANSELEbits.ANSE1 = 1; } while(0)
#define DTMF0_Q2_SetDigitalMode()     do { ANSELEbits.ANSE1 = 0; } while(0)

// get/set DTMF0_Q1 aliases
#define DTMF0_Q1_TRIS                 TRISEbits.TRISE2
#define DTMF0_Q1_LAT                  LATEbits.LATE2
#define DTMF0_Q1_PORT                 PORTEbits.RE2
#define DTMF0_Q1_ANS                  ANSELEbits.ANSE2
#define DTMF0_Q1_SetHigh()            do { LATEbits.LATE2 = 1; } while(0)
#define DTMF0_Q1_SetLow()             do { LATEbits.LATE2 = 0; } while(0)
#define DTMF0_Q1_Toggle()             do { LATEbits.LATE2 = ~LATEbits.LATE2; } while(0)
#define DTMF0_Q1_GetValue()           PORTEbits.RE2
#define DTMF0_Q1_SetDigitalInput()    do { TRISEbits.TRISE2 = 1; } while(0)
#define DTMF0_Q1_SetDigitalOutput()   do { TRISEbits.TRISE2 = 0; } while(0)
#define DTMF0_Q1_SetAnalogMode()      do { ANSELEbits.ANSE2 = 1; } while(0)
#define DTMF0_Q1_SetDigitalMode()     do { ANSELEbits.ANSE2 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/