/*
 * File:   algorithm.h
 * Author: boliu1
 * Comments: for CS431 dsPIC33f board PID controller
 * Created on October 13, 2015, 5:01 PM
 */

#ifndef ABS_ALGORITHM_H
#define ABS_ALGORITHM_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "types.h"

extern void swap(uint16_t * a, uint16_t * b);

extern uint16_t partition(uint16_t * arr, uint16_t len, uint16_t pivot);

extern uint16_t nth_element(uint16_t *arr, uint16_t len, uint16_t n);

extern uint16_t find_median(uint16_t *arr, uint16_t len);

#ifdef	__cplusplus
}
#endif

#endif
