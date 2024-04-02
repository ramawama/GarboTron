#include <csignal>
#include <iostream>
#include <pigpio.h>
#include <chrono>
#include <thread>
#include <cmath>

class Sensor {
    private:
        double distance;
        double max_distance; // in cm
        double percent_full; // relative to max_distance
        
    public:
    Sensor() {
        max_distance = 100;
        distance = 0;
    }

    Sensor(double max_distance) {
        this->max_distance = max_distance;
        distance = 0;
    }

    void set_distance(double distance) {
        this->distance = distance;
    }

    double get_distance() { return distance; }
    
    void update_trash() {
        percent_full = floor(100 - ((distance / max_distance) * 100));
    }

    double get_trash_percent() { return percent_full; }


};