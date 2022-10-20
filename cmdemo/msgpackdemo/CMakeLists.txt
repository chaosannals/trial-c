add_executable(msgpackdemo)

target_sources(
	msgpackdemo
	PRIVATE
	main.c
)

target_include_directories(
	msgpackdemo
	PRIVATE
	${CMDEMO_MSGPACK_C_OUT_INC_DIR}
)

target_link_directories(
	msgpackdemo
	PRIVATE
	${CMDEMO_MSGPACK_C_OUT_BIN_DIR}
)

target_link_libraries(
	msgpackdemo
	PRIVATE
	msgpackc.lib
)