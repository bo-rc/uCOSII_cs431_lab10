/*
 * File:   flexmotor.c
 * Author: Bo Liu
 *
 * Created on October 10, 2015, 11:59 AM
 */

#include "flexmotor.h"

void init_adc2() {
    // ADC2 for Joystick axis
    CLEARBIT(AD2CON1bits.ADON);

    SETBIT(TRISBbits.TRISB4); //
    CLEARBIT(AD2PCFGLbits.PCFG4); // AD2 AN20 input pin set analog
    SETBIT(TRISBbits.TRISB5);
    CLEARBIT(AD2PCFGLbits.PCFG5);
    //Configure AD2CON1
    CLEARBIT(AD2CON1bits.AD12B);
    AD2CON1bits.FORM = 0;
    AD2CON1bits.SSRC = 0x7;

    AD2CON2 = 0;
    //Configure AD1CON3
    CLEARBIT(AD2CON3bits.ADRC);
    AD2CON3bits.SAMC = 0x1F;
    AD2CON3bits.ADCS = 0x2;

    SETBIT(AD2CON1bits.ADON);
}

void motor_init(uint8_t chan)
{
    // use Timer 2
    CLEARBIT(T2CONbits.TON); // Disable Timer
    CLEARBIT(T2CONbits.TCS); // Select internal instruction cycle clock
    CLEARBIT(T2CONbits.TGATE); // Disable Gated Timer mode
    TMR2 = 0x00; // Clear timer register
    T2CONbits.TCKPS = 0b10; // Select 1:64 Prescaler
    CLEARBIT(IFS0bits.T2IF); // Clear Timer2 interrupt status flag
    CLEARBIT(IEC0bits.T2IE); // Disable Timer2 interrupt enable control bit
    PR2 = PERIOD; // Set timer period 20ms:

   if(chan == CHANNEL_Y )
   {
        CLEARBIT(TRISDbits.TRISD7); // Set OC7 as output
        OC7R = MID; // Set the initial to mid position
        OC7RS = MID; // Load OCRS: next pwm duty cycle
        OC7CON = 0x0006; // Set OC7: PWM, no fault check, Timer2
        SETBIT(T2CONbits.TON); // Turn Timer 2 on
    }
    else if (chan == CHANNEL_X)
    {
        CLEARBIT(TRISDbits.TRISD8); // Set OC8 as output
        OC8R = MID; // Set the initial throw to mid position
        OC8RS = MID; // Load OCRS: next pwm duty cycle
        OC8CON = 0x0006; // Set OC8: PWM, no fault check, Timer2
        SETBIT(T2CONbits.TON); // Turn Timer 2 on
    }
}

void motor_set_duty(uint8_t chan, uint16_t duty)
{
    
    if (chan == CHANNEL_Y)
    {
        OC7RS = PERIOD - duty; /* Load OCRS: next pwm duty cycle */
    }
    else if (chan == CHANNEL_X)
    {
        OC8RS = PERIOD - duty; /* Load OCRS: next pwm duty cycle */
    }
}
