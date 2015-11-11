// Clock.h - simulation timer class
#pragma once

class Clock {
    private:
        float tick_size;
        float current_time;
    public:
        Clock();
        void tick( void );
        float getTime( void );
        void setTickSize( float step );
};

