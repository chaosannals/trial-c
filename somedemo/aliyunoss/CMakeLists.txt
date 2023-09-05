cmake_minimum_required(VERSION 3.24)

include(ExternalProject)

project(aliyunoss)

# 阿里 SDK 写得好垃圾，源码管理一坨shit
ExternalProject_Add(
	AliyunOssSdk
	GIT_REPOSITORY "git@github.com:aliyun/aliyun-oss-c-sdk.git"
	GIT_TAG "3.10.0"
)

add_subdirectory(demo1)
