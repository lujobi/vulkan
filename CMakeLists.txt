cmake_minimum_required(VERSION 3.13)
project(triangle)

set(CMAKE_CXX_STANDARD 17)

set(PATH_TO_GLFW /home/lujobi/Documents/coding/sdk/glfw)

find_package(Vulkan REQUIRED)
add_subdirectory(${PATH_TO_GLFW} /home/lujobi/Documents/coding/graphics/triangle/glfw)

add_executable(triangle main.cpp)
include_directories(${PATH_TO_GLFW}/include)

message("Path to GLFW" ${PATH_TO_GLFW})
message("Path to GLFW_LIB" ${GLFW_LIBRARIES})

target_link_libraries(triangle glfw3 ${GLFW_LIBRARIES})
target_link_libraries(triangle Vulkan::Vulkan)