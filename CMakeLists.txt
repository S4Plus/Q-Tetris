cmake_minimum_required(VERSION 3.10)
project(MCTS)
find_package(Threads)

add_subdirectory(lib)
include_directories("${PROJECT_SOURCE_DIR}")
# add_executable(debug exe/main.cpp)
# target_link_libraries(debug LIB)

add_executable(verify "exe/verify.cpp")
target_link_libraries(verify LIB)

# add_executable(2qasm "exe/2qasm.cpp")
# target_link_libraries(2qasm LIB)

add_executable(tetris exe/main.cpp)
target_link_libraries(tetris LIB)
target_link_libraries (tetris ${CMAKE_THREAD_LIBS_INIT})