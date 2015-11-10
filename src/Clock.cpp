#include "Clock.h"

Clock::Clock() {
    current_time = 0.0;
    tick_size = 0.0;
}

void Clock::tick( void ) {
    current_time += tick_size;
}

float Clock::getTime( void ) {
    return current_time;
}

