cmake_minimum_required(VERSION 3.7.2)
project(PrakBS23 C)

set(CMAKE_C_STANDARD 99)

add_executable(PrakBS23 main.c keyValStore.h keyValStore.c sub.c sub.h)
