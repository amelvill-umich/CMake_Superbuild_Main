cmake_minimum_required (VERSION 2.6)

message("Hello from the main repository's CMakeLists.txt!")

set(thisFileDirectory ${CMAKE_CURRENT_SOURCE_DIR})

project(SUPERBUILD_MAIN)

include(CPack)
set(CPACK_GENERATOR NSIS)

message("SUPERBUILD_EXTERN_DIR is " ${SUPERBUILD_EXTERN_DIR})

# it's not looking for CMakeLists.txt, it's looking for a config or find file
# we want a config file, which is in Extern's directory
find_package(SUPERBUILD_EXTERN)

# Set Properties->General->Configuration Type to Application(.exe)
# Creates the executable with the listed sources
# and adds sources to the Solution Explorer
add_executable (main_binary main.c)

if(TARGET Extern::extern_binary)
    message("Extern::extern_binary exists as a target!")
else()
    message("Missing target Extern::extern_binary")
endif()

if(TARGET extern_binary)
    message("extern_binary exists as a target!")
else()
    message("Missing target extern_binary")
endif()

# Adds logic to INSTALL.vcproj to copy the compiled application to destination directory
install (TARGETS main_binary
         RUNTIME DESTINATION "DirectoryForCmakeSuperbuild_Main")