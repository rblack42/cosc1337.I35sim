#pragma once

class Clock {
    private:
        float tick_size;
        float current_time;
    public:
        Clock();
        float getTime( void );
        void tick( void );
        void setTickSize( float step );
};
