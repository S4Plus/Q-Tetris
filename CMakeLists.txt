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

add_executable(swap exe/swap.cpp)
target_link_libraries(swap LIB)
target_link_libraries (swap ${CMAKE_THREAD_LIBS_INIT})
# add_executable(qft exe/qft.cpp)
# target_link_libraries(qft LIB)

add_executable(config exe/config.cpp)
target_link_libraries(config LIB)
target_link_libraries (config ${CMAKE_THREAD_LIBS_INIT})