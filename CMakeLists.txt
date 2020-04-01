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

if(TARGET extern_binary)
    message("extern_binary exists as a target!")
else()
    message("target extern_binary does not exist")
endif()

if(TARGET extern_export_binary)
    message("extern_export_binary exists as a target!")
else()
    message("target extern_export_binary does not exist")
endif()

# just blank
#message("extern_binary is " ${extern_binary})

get_property(extern_location
            TARGET extern_binary
            PROPERTY IMPORTED_LOCATION)

get_property(isImported
            TARGET extern_binary
            PROPERTY IMPORTED)

get_property(configs
            TARGET extern_binary
            PROPERTY IMPORTED_CONFIGURATIONS)

get_property(extern_location_debug
            TARGET extern_binary
            PROPERTY IMPORTED_LOCATION_DEBUG)

message("extern_location is " ${extern_location})
message("isImported is " ${isImported})
message("configs is " ${configs})
message("extern_location_debug is " ${extern_location_debug})

install (TARGETS main_binary 
         RUNTIME DESTINATION "DirectoryForCmakeSuperbuild_Main")

#install(TARGETS extern_binary
#        DESTINATION "DirectoryForCmakeSuperbuild_MainExtern")