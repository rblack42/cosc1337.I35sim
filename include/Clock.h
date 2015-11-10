// Clock.h - simulation timer class
#pragma once

class Clock {
    private:
        float tick_size = 0.0;
        float current_time = 0.0;
    public:
        void tick( void );
        float getTime( void );
};

