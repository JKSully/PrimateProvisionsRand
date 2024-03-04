#include <motor_controller.hpp>
#include <iostream>

MotorController::MotorController(int header) : header_(header) {

}

void MotorController::doCyle() {
    std::cout << "Doing motor cycle" << std::endl;
}