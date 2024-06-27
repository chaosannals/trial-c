cmake_minimum_required(VERSION 3.24)

if (MSVC)
	# 这个没有必要，通过TARGET 属性设置反而会报错
	# TODO 判断 直接 libzmq-static 是否已经静态的了。
	# set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")

endif()

include("cmake/Libzmq.cmake")

FetchLibzmq()

project(libzmqdemo)

add_subdirectory(srvdemo)
add_subdirectory(clidemo)
