#include "Clock.h"

Clock::Clock() {
    tick_size = 0.0;
    current_time = 0.0;
}

void Clock::tick( void ) {
    current_time += tick_size;
}

float Clock::getTime( void ) {
    return current_time;
}

void Clock:: setTickSize( float size ) {
    tick_size = size;
}

