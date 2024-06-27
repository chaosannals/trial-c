cmake_minimum_required(VERSION 3.24)

include("cmake/Libzmq.cmake")

FetchLibzmq()

project(libzmqdemo)

add_subdirectory(srvdemo)
add_subdirectory(clidemo)