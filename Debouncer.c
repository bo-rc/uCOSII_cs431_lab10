#include "Debouncer.h"

void button_init(Debouncer * button)
{
    uint8_t i = 0;
    for (; i < NUM_SAMPLES; ++i)
    {
        button->samples[NUM_SAMPLES] = 0;
    }

    button->sampleIdx = 0;
    button->previousValue = 0;
    button->stable = 0;
}

void button_sample(Debouncer * button, uint8_t Port_Reading)
{
    uint8_t i = 0;
    for (; i < NUM_SAMPLES; ++i)
    {
        __delay_ms(DELAY_TIME_MS);
        button->samples[i] = Port_Reading;
    }
}

void button_read(Debouncer * button, uint8_t Port_Reading)
{
    button->samples[button->sampleIdx] = Port_Reading;

    if (++button->sampleIdx == NUM_SAMPLES)
        button->sampleIdx = 0;
}

uint8_t button_debounced(Debouncer* button)
{
    button->stable = 1;
    uint8_t i = 1;
    for(; i < NUM_SAMPLES; ++i)
    {
        if ((button->samples[0] ^ button->samples[i]) == 1)
        {
            button->stable = 0;
            return UNSTABLE;
        }
    }

    if (button->samples[0] == button->previousValue)
    { // value not changed: user code decides what to do
        return UNCHANGED;
    }
    else // discovers a new value
    {
        button->previousValue = button->samples[0];
        return button->samples[0];
    }
}
