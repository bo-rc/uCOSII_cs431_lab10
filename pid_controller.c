/*
 * File:   pid_controller.c
 * Author: Bo
 *
 * Created on October 25, 2015, 3:39 PM
 */


#include "pid_controller.h"
#include <stdlib.h>

void pid_controller_init(pid_controller_t * controller, float trim, float delta_threshold, float Delta_time, float Kp, float Ki, float Kd) {
    controller->current_delta = 0.0f;
    controller->previous_delta = 300.0f;
    controller->integral = 0.0f;
    controller->derivative = 0.0f;

    controller->trim = trim;
    controller->delta_threshold = delta_threshold;
    controller->delta_time = Delta_time;

    controller->kp = Kp;
    controller->ki = Ki;
    controller->kd = Kd;
}

uint16_t feed_back(pid_controller_t * controller, float pos, float target) {
    // Proportional feedback
    controller->current_delta = target - pos;

    // handling losing contact: maintain velocity
    if (abs(controller->current_delta) > controller->delta_threshold)
        controller->current_delta = controller->previous_delta;

    // Integration feedback
    controller->integral += controller->current_delta * controller->delta_time;

    // Derivative feedback
    controller->derivative = (controller->current_delta - controller->previous_delta) / controller->delta_time;
    controller->previous_delta = controller->current_delta;

    controller->feedback = controller->kp * controller->current_delta + controller->ki * controller->integral + controller->kd * controller->derivative;

    return controller->feedback + controller->trim; // magic numbers
}
