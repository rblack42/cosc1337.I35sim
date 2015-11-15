#include "Clock.h"

void Clock::tick( void ) {
    current_time += tick_size;
}

float Clock::getTime( void ) {
    return current_time;
}

