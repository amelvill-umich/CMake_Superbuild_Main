cmake_minimum_required (VERSION 2.6)

project(Superbuild_main)

include(CPack)
set(CPACK_GENERATOR NSIS)

message("Hello from the main repository's CMakeLists.txt!")

# Set Properties->General->Configuration Type to Application(.exe)
# Creates the executable with the listed sources
# and adds sources to the Solution Explorer
add_executable (main_binary main.c)

# Adds logic to INSTALL.vcproj to copy the compiled application to destination directory
install (TARGETS main_binary
         RUNTIME DESTINATION "DirectoryForCmakeSuperbuild_Main")