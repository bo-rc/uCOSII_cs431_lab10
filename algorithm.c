/*
 * File:   algorithm.h
 * Author: boliu1
 * Comments: implementation of algorithm.h
 * Created on October 13, 2015, 6:00 PM
 */
#include "algorithm.h"

void swap(uint16_t * a, uint16_t * b)
{
    uint16_t tmp = *a;
    *a = *b;
    *b = tmp;
}

uint16_t partition(uint16_t * arr, uint16_t len, uint16_t pivot)
{
    if (len == 1)
        return 0;

    swap(&arr[pivot], &arr[len - 1]);

    uint16_t itr_front = 0;
    uint16_t itr_back = len - 2;
    uint16_t itr_end = len - 1;

    while(1)
    {
        // go from front to back
        while(itr_front != itr_back && arr[itr_front] < arr[itr_end])
            ++itr_front;
        if(itr_front == itr_back)
            break; // at this point, the value of arr[itr_front] is not yet tested

        // go from back to front
        while(itr_back != itr_front && arr[itr_end] <= arr[itr_back])
            --itr_back;
        if(itr_back == itr_front)
            break; // // at this point, the value of arr[itr_front] is not yet tested

        /* at this point,
         *   the loop invariants:
         *     all elements before front < pivot
         *     all elements after back >= pivot
         *     element at itr_back < pivot
         */
        swap(&arr[itr_front], &arr[itr_back]);
        ++itr_front;
    }

    if(arr[itr_end] <= arr[itr_front])
        swap(&arr[itr_end], &arr[itr_front]);
    else
        swap(&arr[itr_end], &arr[++itr_front]);
    return itr_front;
}


uint16_t nth_element(uint16_t *arr, uint16_t len, uint16_t n)
{
    assert(n < len);
    uint16_t arr_copy[len];
    memcpy(arr_copy, arr, sizeof(arr_copy));
    uint16_t len_copy = len;
    uint16_t new_pivot = 0;
    uint16_t offset = 0;

    while(1)
    {
        uint16_t pivot = rand()%len_copy;

        new_pivot = partition(&arr_copy[offset], len_copy, pivot);

        if(n == new_pivot)
            return arr_copy[offset + new_pivot];
        else if(n < new_pivot)
        { // the element is in the lower half
            len_copy = new_pivot; // just chop off the array and use the lower half
                                  // offset, relative index (n) won't change
        }
        else
        { // the element is in the higher half
            n -= new_pivot + 1; // relative index (n) decreases by this number
            offset += new_pivot + 1; // offset increases by this number
            len_copy -= new_pivot + 1; // lenth decreases by this number
        }
    }
}

uint16_t find_median(uint16_t *arr, uint16_t len)
{
    return nth_element(arr, len, len/2);
}

