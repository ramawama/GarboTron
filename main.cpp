#include <stdio.h>
#include <pigpio.h>
#include <string.h>
#include <wiringPi.h> 
#include <wiringPiI2C.h>
#include <iostream>
#include <string>
#include <cstring>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <sstream>

int LCDAddr = 0x27;
int BLEN = 1;
int fd;

void write_word(int data){
    int temp = data;
    if ( BLEN == 1 )
        temp |= 0x08;
    else
        temp &= 0xF7;
    wiringPiI2CWrite(fd, temp);
}

void send_command(int comm){
    int buf;
    // Send bit7-4 firstly
    buf = comm & 0xF0;
    buf |= 0x04;                    // RS = 0, RW = 0, EN = 1
    write_word(buf);
    delay(2);
    buf &= 0xFB;                    // Make EN = 0
    write_word(buf);

    // Send bit3-0 secondly
    buf = (comm & 0x0F) << 4;
    buf |= 0x04;                    // RS = 0, RW = 0, EN = 1
    write_word(buf);
    delay(2);
    buf &= 0xFB;                    // Make EN = 0
    write_word(buf);
}

void send_data(int data){
    int buf;
    // Send bit7-4 firstly
    buf = data & 0xF0;
    buf |= 0x05;                    // RS = 1, RW = 0, EN = 1
    write_word(buf);
    delay(2);
    buf &= 0xFB;                    // Make EN = 0
    write_word(buf);

    // Send bit3-0 secondly
    buf = (data & 0x0F) << 4;
    buf |= 0x05;                    // RS = 1, RW = 0, EN = 1
    write_word(buf);
    delay(2);
    buf &= 0xFB;                    // Make EN = 0
    write_word(buf);
}

void init(){
    send_command(0x33);     // Must initialize to 8-line mode at first
    delay(5);
    send_command(0x32);     // Then initialize to 4-line mode
    delay(5);
    send_command(0x28);     // 2 Lines & 5*7 dots
    delay(5);
    send_command(0x0C);     // Enable display without cursor
    delay(5);
    send_command(0x01);     // Clear Screen
    wiringPiI2CWrite(fd, 0x08);
}

void clear(){
    send_command(0x01);     //clear Screen
}

void write(int x, int y, char data[]){
    int addr, i;
    int tmp;
    if (x < 0)  x = 0;
    if (x > 15) x = 15;
    if (y < 0)  y = 0;
    if (y > 1)  y = 1;

    // Move cursor
    addr = 0x80 + 0x40 * y + x;
    send_command(addr);

    tmp = strlen(data);
    for (i = 0; i < tmp; i++){
        send_data(data[i]);
    }
}

void writeDistance(int x, int y, double distance) {
    std::ostringstream oss;
    oss << distance << " %";
    std::string distanceString = oss.str();
    const char* distanceChars = distanceString.c_str();
    char nonConstBuffer[distanceString.length() + 1];
    strcpy(nonConstBuffer, distanceChars);
    write(x, y, nonConstBuffer);
}


int main() {
    int LCDAddr = 0x27; // Assuming this is the I2C address of your LCD

    fd = wiringPiI2CSetup(LCDAddr);
    init();
    write(0, 0, "Greetings!");
    write(1, 1, "From SunFounder");
    delay(3000);
    clear();



    // Create a socket file descriptor
    int server_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (server_fd == -1) {
        std::cerr << "Failed to create socket" << std::endl;
        return 1;
    }

    // Set up the server address
    sockaddr_in server_addr;
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = INADDR_ANY;
    server_addr.sin_port = htons(8080);

    // Bind the socket to the server address
    if (bind(server_fd, (sockaddr*)&server_addr, sizeof(server_addr)) == -1) {
        std::cerr << "Failed to bind socket" << std::endl;
        return 1;
    }

    // Listen for incoming connections
    if (listen(server_fd, 5) == -1) {
        std::cerr << "Failed to listen on socket" << std::endl;
        return 1;
    }

    std::cout << "Server listening on port 8080" << std::endl;

    // Accept a new connection
    sockaddr_in client_addr;
    socklen_t client_len = sizeof(client_addr);
    int client_fd = accept(server_fd, (sockaddr*)&client_addr, &client_len);
    if (client_fd == -1) {
        std::cerr << "Failed to accept connection" << std::endl;
        return 1;
    }

    std::cout << "Accepted connection from " << inet_ntoa(client_addr.sin_addr) << std::endl;

    write(0, 0, "Distance: ");

    while (true) {
        // Receive the distance data
        char buffer[1024];
        memset(buffer, 0, sizeof(buffer));
        ssize_t bytes_received = recv(client_fd, buffer, sizeof(buffer) - 1, 0);
        if (bytes_received == -1) {
            std::cerr << "Failed to receive data" << std::endl;
            break;
        } else {
            std::string distanceString(buffer, bytes_received);
            std::istringstream iss(distanceString);
            double distance;
            iss >> distance;
            if (iss.fail()) {
                std::cerr << "Error converting received data to double" << std::endl;
            } else {
                std::cout << "Received distance: " << distance << std::endl;
                writeDistance(1, 1, distance);
            }
        }
    }

    // Close the server socket
    close(server_fd);

    return 0;
}


