#pragma once

#include "sensor.cpp"

//trig gpio 4
//echo gpio 24
const int TRIG = 4;
const int ECHO = 24;

Sensor garbotron(20);

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
    
    int client_fd = socket(AF_INET, SOCK_STREAM, 0);
    // Set up the server address
    sockaddr_in server_addr;
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = inet_addr("192.168.137.171"); // Server Raspberry Pi's IP address
    server_addr.sin_port = htons(8080);

    // Connect to the server
    connect(client_fd, (sockaddr*)&server_addr, sizeof(server_addr));
    bool running = true;
    while (running) {
        //double distance = measureDistance();
        garbotron.set_distance(measureDistance());
        garbotron.update_trash();
        std::cout << "Distance: " << garbotron.get_distance() << " cm" << std::endl;
        std::cout << "Percent of trashcan filled: " << garbotron.get_trash_percent() << "%" << std::endl;
        std::this_thread::sleep_for(std::chrono::seconds(5)); // Measure every second
        // Simulate distance data (replace with your actual distance sensor code)
        std::string percent = std::to_string(garbotron.get_trash_percent());

        // Send the distance data
        send(client_fd, percent.c_str(), percent.length(), 0);
    }
    

    

    // Close the socket
    close(client_fd);
    gpioTerminate(); // Should ideally be called on program exit
    return 0;
}
