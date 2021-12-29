# DO NOT MODIFY THIS FILE, IT WILL BE OVERRIDE!!!

# set this will supress some warnings
set(BUILDING_SDK "yes" CACHE INTERNAL "")
set(PROJ_TO_SDK_PATH "./../../../../KendryteProjects/kendryte-standalone-sdk-develop" )

# basic config
if (NOT PROJ)
    get_filename_component(PROJ ${CMAKE_CURRENT_BINARY_DIR} DIRECTORY)
    get_filename_component(PROJ ${PROJ} NAME)
    string(REPLACE " " "_" PROJ ${PROJ})
    message(STATUS "PROJ not set, use ${PROJ} as PROJ. Also, you can set it manually. e.g. -DPROJ=hello_world")
else()
    message("PROJ = ${PROJ}")
endif ()
cmake_minimum_required(VERSION 3.0)
include(${PROJ_TO_SDK_PATH}/cmake/common.cmake)
project(${PROJ} C CXX ASM)

# config self use headers
include(${PROJ_TO_SDK_PATH}/cmake/macros.internal.cmake)
header_directories(${PROJ_TO_SDK_PATH}/lib )

#project header directories
header_directories(./)
header_directories(./components/unity)
header_directories(./components/unity/Unity)

add_subdirectory(${PROJ_TO_SDK_PATH}/third_party/gsl-lite third_party/gsl-lite)
add_subdirectory(${PROJ_TO_SDK_PATH}/third_party/mpark-variant third_party/mpark-variant)
add_subdirectory(${PROJ_TO_SDK_PATH}/third_party/nlohmann_json third_party/nlohmann_json)
# build library first
add_subdirectory(${PROJ_TO_SDK_PATH}/lib lib)

# compile project
add_source_files(*.c *.s *.S *.cpp)
include(${PROJ_TO_SDK_PATH}/cmake/executable.cmake)

