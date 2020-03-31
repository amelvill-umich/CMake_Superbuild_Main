message("Start of find script for the extern project.")

# note that SUPERBUILD_EXTERN_DIR is a cache varaible for this project
find_program(
                EXTERN_BINARY 
                # hack
                "DirectoryForCmakeSuperbuild_Extern/extern_binary"
                "C:/_FILES/home/cmbuild/extern-install/DirectoryForCmakeSuperbuild_Extern"]
            )

message("EXTERN_BINARY IS " ${EXTERN_BINARY})

# get_cmake_property(_variableNames VARIABLES)
# list (SORT _variableNames)
# foreach (_variableName ${_variableNames})
#     message(STATUS "${_variableName}=${${_variableName}}")
# endforeach()