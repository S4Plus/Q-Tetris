include_directories("${PROJECT_SOURCE_DIR}")
aux_source_directory(. LIB_SRCS)
add_library(LIB  ${LIB_SRCS})