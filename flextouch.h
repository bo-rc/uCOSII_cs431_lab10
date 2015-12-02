/*
 * File:   flextouch.h
 * Author: Bo Liu
 * Comments:
 * Revision history:
 */
#ifndef FLEXTOUCH_H
#define	FLEXTOUCH_H
#include <p33Fxxxx.h>
//do not change the order of the following 3 definitions
#define FCY 12800000UL
#include <stdio.h>
#include <libpic30.h>

#include <stdio.h>
#include <libpic30.h>
#include "types.h"

#define DIM_X 13
#define DIM_Y 23

#ifdef	__cplusplus
extern "C" {
#endif

extern void Delay_ms(uint16_t time_ms);

extern void init_adc1();

extern void touch_init();

extern void touch_select_dim(uint8_t dim);

extern uint16_t touch_adc();

extern uint16_t touch_read(uint8_t dim);

#ifdef	__cplusplus
}
#endif

#endif	/* FLEXTOUCH_H */
