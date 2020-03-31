cmake_minimum_required (VERSION 2.6)

project(SUPERBUILD_MAIN)

include(CPack)
set(CPACK_GENERATOR NSIS)

message("SUPERBUILD_EXTERN_DIR is " ${SUPERBUILD_EXTERN_DIR})

set(CMAKE_MODULE_PATH ${SUPERBUILD_EXTERN_DIR} ${CMAKE_MODULE_PATH})


# hack
set(CMAKE_MODULE_PATH "C:/_FILES/home/CMake_Superbuild_Root/build/extern-prefix/src/extern" ${CMAKE_MODULE_PATH})

message("CMAKE_MODULE_PATH is now " ${CMAKE_MODULE_PATH})

# it's not looking for CMakeLists.txt, it's looking for a config or find file
find_package(SUPERBUILD_EXTERN)

message("Hello from the main repository's CMakeLists.txt!")

# Set Properties->General->Configuration Type to Application(.exe)
# Creates the executable with the listed sources
# and adds sources to the Solution Explorer
add_executable (main_binary main.c)

# Adds logic to INSTALL.vcproj to copy the compiled application to destination directory
install (TARGETS main_binary
         RUNTIME DESTINATION "DirectoryForCmakeSuperbuild_Main")