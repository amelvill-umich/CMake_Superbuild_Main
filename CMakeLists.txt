cmake_minimum_required (VERSION 2.6)

project(SUPERBUILD_MAIN)

message("Hello from the main repository's CMakeLists.txt!")

# Creates the executable with the listed sources and adds sources to the Solution Explorer
# (but you won't see main.c in the root (superbuild) solution)
add_executable (main_binary main.c)

install (TARGETS main_binary 
         RUNTIME DESTINATION "DirectoryForCmakeSuperbuild_Main")