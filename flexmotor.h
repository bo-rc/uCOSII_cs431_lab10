/*
 * File:   flexmotor.h
 * Author:  Bo Liu
 * Created on: Oct 9, 2015, 11:58 AM
 * Comments:
 * Revision history:
 */

#ifndef FLEXMOTOR_H
#define	FLEXMOTOR_H
#include <p33Fxxxx.h>
//do not change the order of the following 3 definitions
#define FCY 12800000UL
#include <stdio.h>
#include <libpic30.h>
#include "types.h"

#ifdef	__cplusplus
extern "C" {
#endif

#ifndef FCY
#define FCY 12800000UL
#endif

#ifndef PERIOD
#define PERIOD 4000 // 0.02*FCY/64 // 20ms, required by CS431
#endif


#ifndef CHANNEL_X
#define CHANNEL_X 17
#endif

#ifndef CHANNEL_Y
#define CHANNEL_Y 41
#endif

#ifndef LOW
#define LOW (0.955*PERIOD) // 0.9ms -> 0 degree
#endif

#ifndef MID
#define MID (0.925*PERIOD) // 1.5ms -> 90 degree
#endif

#ifndef HIGH
#define HIGH (0.895*PERIOD) // 2.1ms -> 180 degree
#endif

extern void init_adc2(); // adc2 is hardwired to Joystick X/Y
extern void motor_init(uint8_t chan);
extern void motor_set_duty(uint8_t chan, uint16_t duty);

#ifdef	__cplusplus
}
#endif

#endif	/* FLEXMOTOR_H */
