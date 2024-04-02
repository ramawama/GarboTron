#pragma once
#include "garbotron_sensor/sensor.cpp"

//trig gpio 4
//echo gpio 24
const int TRIG = 4;
const int ECHO = 24;

Sensor garbotron(100);

void setup() {
    if (gpioInitialise() < 0) {
        std::cerr << "pigpio initialization failed." << std::endl;
        exit(1);
    }

    // Set GPIO modes
    gpioSetMode(TRIG, PI_OUTPUT);
    gpioSetMode(ECHO, PI_INPUT);

    // Ensure trigger is low
    gpioWrite(TRIG, 0);
    std::this_thread::sleep_for(std::chrono::milliseconds(500));
}

double measureDistance() {
    // Send pulse
    gpioWrite(TRIG, 1);
    std::this_thread::sleep_for(std::chrono::microseconds(10)); // 10 microsecond pulse
    gpioWrite(TRIG, 0);

    // Wait for echo start
    while(gpioRead(ECHO) == 0) {}

    auto start = std::chrono::steady_clock::now();

    // Wait for echo end
    while(gpioRead(ECHO) == 1) {}

    auto end = std::chrono::steady_clock::now();

    // Calculate pulse length
    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start).count();

    // Calculate distance in centimeters
    double distance = duration * 0.034 / 2;

    return distance;
}

int main() {
    setup();

    while (true) {
        double distance = measureDistance();
        std::cout << "Distance: " << distance << " cm" << std::endl;
        std::this_thread::sleep_for(std::chrono::seconds(1)); // Measure every second
    }

    gpioTerminate(); // Should ideally be called on program exit
    return 0;
}
