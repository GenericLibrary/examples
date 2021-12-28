# This is the project CMakeLists.txt file for the test subproject
cmake_minimum_required(VERSION 3.5)

set(TEST_COMPONENTS "keypadnxn" CACHE STRING "List of components to test")

include($ENV{IDF_PATH}/tools/cmake/project.cmake)
project(espidf-ex)
