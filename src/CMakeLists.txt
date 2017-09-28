cmake_minimum_required (VERSION 2.8.3)
project (Catan)

set(OUTPUT "${CMAKE_CURRENT_SOURCE_DIR}/../output")
set(CMAKE_BUILD_FILES_DIRECTORY ${OUTPUT})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${OUTPUT}/bin")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${OUTPUT}/lib")
set (CMAKE_CXX_FLAGS "--std=c++11 ${CMAKE_CXX_FLAGS}")

add_subdirectory (Client)
add_subdirectory (Common)
add_subdirectory (Service)
