cmake_minimum_required(VERSION 3.16.3)
project(MyProject)
add_library(MyProdlib STATIC main.cpp my_lib.cpp my_lib.h)
add_executable(MyProject 
./main.cpp
./my_lib.cpp
)
