message("Start of find script for the extern project.")

# note that SUPERBUILD_EXTERN_DIR is a cache varaible for this project
find_program(
                EXTERN_BINARY 
                "extern_binary"
                ${SUPERBUILD_EXTERN_DIR}]
            )

message("EXTERN_BINARY IS " ${EXTERN_BINARY})

# get_cmake_property(_variableNames VARIABLES)
# list (SORT _variableNames)
# foreach (_variableName ${_variableNames})
#     message(STATUS "${_variableName}=${${_variableName}}")
# endforeach()