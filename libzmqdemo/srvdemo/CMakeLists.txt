add_executable(srvdemo)

target_sources(
	srvdemo
	PRIVATE
	"main.c"
)

target_link_libraries(
    srvdemo
    PRIVATE
    libzmq-static
)

set_target_properties(
    srvdemo
    PROPERTIES
	C_STANDARD 11
)
