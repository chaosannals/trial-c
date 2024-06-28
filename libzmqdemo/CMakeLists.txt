cmake_minimum_required(VERSION 3.24)

include("cmake/Libzmq.cmake")

FetchLibzmq()

project(libzmqdemo)

#if (MSVC)
	# 加入会报错。
    #set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
#endif()

add_subdirectory(srvdemo)
add_subdirectory(clidemo)
