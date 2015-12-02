/*
 * File:   flextouch.c
 * Author: Bo Liu
 *
 * Created on October 14, 2015, 2:31 PM
 */

#include "flextouch.h"


void Delay_ms(uint16_t time_ms) {
    __delay_ms(time_ms);
}

//Initialize the ADC
void init_adc1(){

    // 0. Disable ADC1
    CLEARBIT(AD1CON1bits.ADON);

    // 1. set input pins
    SETBIT(TRISBbits.TRISB15); // set input. AN15
    SETBIT(TRISBbits.TRISB9); // set input. AN9

    // 2. set analog pins
    CLEARBIT(AD1PCFGLbits.PCFG15); // set analog. X is hardwired to AN15
    CLEARBIT(AD1PCFGLbits.PCFG9); // set analog. Y is hardwired to AN9

    // 3. Configure AD1CON1
    SETBIT(AD1CON1bits.AD12B); // set 12-bit mode
    AD1CON1bits.FORM = 0; // set integer output
    AD1CON1bits.SSRC = 0x7; // set automatic conversion

    // 4. Configure AD1CON2
    AD1CON2 = 0; // not using scanning sampling

    // 5. Configure AD1CON3
    CLEARBIT(AD1CON3bits.ADRC); // internal clock source
    AD1CON3bits.SAMC = 0x1F; // sample-to-conversion clock = 31Tad
    AD1CON3bits.ADCS = 0x2; // Tad = 3Tcy (Time cycles)

    // 6. Enable ADC1
    SETBIT(AD1CON1bits.ADON);
}

//Initialize the touch screen
void touch_init(){
    // set up the I/O pins E1, E2, E3 to be output pins
    CLEARBIT(TRISEbits.TRISE1); //I/O pin set to output
    CLEARBIT(TRISEbits.TRISE2); //I/O pin set to output
    CLEARBIT(TRISEbits.TRISE3); //I/O pin set to output

    // enter standby mode
    SETBIT(LATEbits.LATE1); // use Latch registers
    SETBIT(LATEbits.LATE2);
    CLEARBIT(LATEbits.LATE3);
}

// select the dimension for the touch Screen
void touch_select_dim(uint8_t dim) {

    if(dim == DIM_X) {
        CLEARBIT(LATEbits.LATE1); // use Latch registers
        SETBIT(LATEbits.LATE2);
        SETBIT(LATEbits.LATE3);
        AD1CHS0bits.CH0SA = 0x000F; //set ADC to sample AN15
        Delay_ms(10);
    } else if (dim == DIM_Y) {
        // set up the I/O pins E1, E2, E3 for Y
        SETBIT(LATEbits.LATE1); // use Latch registers
        CLEARBIT(LATEbits.LATE2);
        CLEARBIT(LATEbits.LATE3);
        AD1CHS0bits.CH0SA = 0x0009; // set ADC to sample AN9
        Delay_ms(10);
    }
}

uint16_t touch_adc(){

    SETBIT(AD1CON1bits.SAMP); // start to sample
    while(!AD1CON1bits.DONE); // wait for conversion to finish
    CLEARBIT(AD1CON1bits.DONE); // MUST HAVE! clear conversion done bit

    return ADC1BUF0;
}
