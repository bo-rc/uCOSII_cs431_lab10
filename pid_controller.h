/*
 * File:   pid_controller.h
 * Author: Bo Liu
 * Comments:
 * Revision history:
 */
#ifndef PID_CONTROLLER_H
#define	PID_CONTROLLER_H

#include <p33Fxxxx.h>
//do not change the order of the following 3 definitions
#define FCY 12800000UL
#include <stdio.h>
#include <libpic30.h>

#include <stdio.h>
#include <libpic30.h>
#include "types.h"

// This is a guard condition so that contents of this file are not included
// more than once.

#include <xc.h> // include processor files - each processor file is guarded.

#ifdef	__cplusplus
extern "C" {
#endif

typedef struct {
    float current_delta;
    float previous_delta;
    float integral;
    float derivative;
    float delta_threshold;
    
    float trim;

    float delta_time;

    float feedback;

    float kp;
    float ki;
    float kd;
} pid_controller_t;

void pid_controller_init(pid_controller_t * controller, float trim, float delta_threshold, float Delta_time, float Kp, float Ki, float Kd);

uint16_t feed_back(pid_controller_t * controller, float pos, float target);

#ifdef	__cplusplus
}
#endif

#endif	/* PID_CONTROLLER_H */
