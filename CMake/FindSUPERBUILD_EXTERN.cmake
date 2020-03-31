message("Start of find script for the extern project.")
find_program(EXTERN_BINARY "extern_binary")

message("EXTERN_BINARY IS " ${EXTERN_BINARY})

get_cmake_property(_variableNames VARIABLES)
list (SORT _variableNames)
foreach (_variableName ${_variableNames})
    message(STATUS "${_variableName}=${${_variableName}}")
endforeach()