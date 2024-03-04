#include <random_motor_controller.hpp>
#include <memory>


int main()
{
    // eventually add embedded allocator
    //std::unique_ptr<RandomMotorController> mc;
    RandomMotorController mc(1);

    return 0;
}
