add_executable(clidemo)

target_sources(
	clidemo
	PRIVATE
	"main.c"
)

if (MSVC)

	# 这个加入会报错。
	#set_target_properties(
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
