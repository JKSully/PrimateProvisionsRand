#include <random_motor_controller.hpp>
#include <chrono>
#include <thread>
#include <iostream>
#include <cstdint>
#include <limits>

RandomMotorController::RandomMotorController() : RandomMotorController(1) {}

RandomMotorController::RandomMotorController(int header) : MotorController(header), random_device_(), mt19937_(random_device_()) {
    static std::int32_t constexpr const num_compartments = 8;
    std::int32_t n = 0;
    auto prev_time = std::chrono::high_resolution_clock::now();
    decltype(prev_time) current_time;

    std::uniform_int_distribution<std::int32_t> distribution(0, std::numeric_limits<std::int32_t>::max() / 256);
    while (n < num_compartments) {
        int rand = distribution(mt19937_);
        if (rand == 0) {
            disperse();
            current_time = std::chrono::high_resolution_clock::now();
            std::cout << "Time between dispersements: " << std::chrono::duration_cast<std::chrono::milliseconds>(current_time - prev_time) << std::endl;
            prev_time = current_time;
            ++n;
        }
    }
}

void RandomMotorController::disperse() {
    doCyle();
}