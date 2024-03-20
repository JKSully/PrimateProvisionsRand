#include <random_motor_controller.hpp>
#include <chrono>
#include <thread>
#include <iostream>
#include <cstdint>
#include <limits>

using namespace std::chrono_literals;

RandomMotorController::RandomMotorController() : RandomMotorController(1) {}

RandomMotorController::RandomMotorController(int header) : MotorController(header), random_device_(), mt19937_(random_device_()) {
    std::int32_t num_distributions = 10;
    static auto constexpr const time_span = 1.0h;
    auto time_segments = std::chrono::duration_cast<std::chrono::minutes>(time_span) / num_distributions;

    std::int32_t const rhs = static_cast<std::int32_t>(time_segments.count());
    std::uniform_int_distribution<std::int32_t> distribution(1, rhs);

    // testing
    auto prev_time = std::chrono::high_resolution_clock::now();

    auto iter_start_time = std::chrono::high_resolution_clock::now();
    while (num_distributions > 0) {
        std::int32_t const val = distribution(this->mt19937_);
        if (val == 1) {
            disperse();
            auto now = std::chrono::high_resolution_clock::now();
            auto time_elapsed = std::chrono::duration_cast<std::chrono::minutes>(now - iter_start_time);
            // Debugging
            auto cur_time = std::chrono::high_resolution_clock::now();
            auto time_between = std::chrono::duration_cast<std::chrono::minutes>(cur_time - prev_time);
            std::cout << "Time elapsed: " << time_between.count() << "m" << std::endl;
            prev_time = cur_time;
            // end debug
            std::this_thread::sleep_for(time_segments - time_elapsed);
            iter_start_time = std::chrono::high_resolution_clock::now();
            --num_distributions;
        } else if (std::chrono::duration_cast<std::chrono::minutes>(std::chrono::high_resolution_clock::now() - iter_start_time) >= time_segments) {
            disperse();
            iter_start_time = std::chrono::high_resolution_clock::now();
            --num_distributions;
            // Debugging
            auto cur_time = std::chrono::high_resolution_clock::now();
            auto time_between = std::chrono::duration_cast<std::chrono::minutes>(cur_time - prev_time);
            std::cout << "Time elapsed: " << time_between.count() << "m" << std::endl;
            prev_time = cur_time;
            // end debug
        } else {
            std::this_thread::sleep_for(1min);
        }
    }
}

void RandomMotorController::disperse() {
    doCyle();
}