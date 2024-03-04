cmake_minimum_required(VERSION 3.25)
project(ZooFeeder)

set(CMAKE_CXX_STANDARD 23)
find_package(Threads REQUIRED)

add_library(motor_controller_lib SHARED
    src/motor_controller.cpp src/random_motor_controller.cpp include/embedded_allocator.hpp
)
target_include_directories(motor_controller_lib PUBLIC include)

add_executable(Primate_Provisions main.cpp)
target_link_libraries(Primate_Provisions PRIVATE motor_controller_lib)


