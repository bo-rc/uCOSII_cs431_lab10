/*
 * File:   Debouncer.h
 * Author: boliu
 *
 * Created on October 1, 2015, 6:56 PM
 */

#ifndef DEBOUNCER_H
#define	DEBOUNCER_H
#include <p33Fxxxx.h>
//do not change the order of the following 3 definitions
#ifndef FCY
#define FCY 12800000UL
#endif
#include <stdio.h>
#include <libpic30.h>

#include "types.h"

#ifdef	__cplusplus
extern "C" {
#endif

// Macros
#ifndef NUM_SAMPLES
#define NUM_SAMPLES       4
#endif

#define UNSTABLE          2
#define UNCHANGED         3
#define DELAY_TIME_MS     2

typedef struct {
    uint8_t samples[NUM_SAMPLES];
    uint8_t sampleIdx;
    uint8_t previousValue;
    uint8_t stable;
} Debouncer;

extern void button_init(Debouncer * button);

extern void button_sample(Debouncer * button, uint8_t Port_Reading); // get all samples in a single call

extern void button_read(Debouncer * button, uint8_t Port_Reading); // get one sample per call

extern uint8_t button_debounced(Debouncer* button);


#ifdef	__cplusplus
}
#endif

#endif	/* DEBOUNCER_H */
