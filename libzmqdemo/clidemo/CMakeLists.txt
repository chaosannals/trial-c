add_executable(clidemo)

target_sources(
	clidemo
	PRIVATE
	"main.c"
)

if (MSVC)

	# 这个加入会报错,libzmq 的编译脚本没有把 vcr 打包进去，如果主程序 MT 会起冲突。
    # 可以通过修改 libzmq 的 CMAKE 源码的方式，但是这样太脏了。
	# set_target_properties(
	#	clidemo
	#	PROPERTIES
	#	MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>"
	#)
endif()

target_link_libraries(
    clidemo
    PRIVATE
    libzmq-static
)

set_target_properties(
    clidemo
    PROPERTIES
	C_STANDARD 11
)
