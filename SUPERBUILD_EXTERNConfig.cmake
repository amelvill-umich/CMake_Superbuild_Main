# does Main execute the config file???
message("Hello from SUPERBUILD_EXTERNConfig.cmake!")
install(EXPORT DepTargets
        FILE "DepTargets.cmake" # note: this file gets generated
        NAMESPACE Extern::
        DESTINATION "DirectoryForCmakeSuperbuild_Extern/cmake/Extern"
)