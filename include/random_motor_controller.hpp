#include <motor_controller.hpp>
#include <random>

class RandomMotorController : MotorController {
public:
    RandomMotorController();

    RandomMotorController(int header);



private:
    void disperse();

    std::random_device random_device_;

    std::mt19937 mt19937_;

};