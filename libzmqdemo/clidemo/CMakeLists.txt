add_executable(clidemo)

target_sources(
	clidemo
	PRIVATE
	"main.c"
)

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
