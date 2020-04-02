# CMake_Superbuild_Main
CMake Superbuild Example: Main Repository Project

This repository is a part of an example of how to work with ExternalProject_Add and CPack. 

- It just builds a "hello world" application. It doesn't actually depend on or run the binary produced by the [Extern](https://github.com/amelvill-umich/CMake_Superbuild_Extern) project, in a real project it probably would.
- This repository represents the "main" application of a project using superbuild, this repository would contain your application's code, and Extern could contain the source of a library that your application needs.

This root repository will:
- Build main.c into main_binary, and install it into a relative folder so that it can be packaged by the [root / superbuild repository](https://github.com/amelvill-umich/CMake_Superbuild_Root).

Thanks to [Florian](https://discourse.cmake.org/u/florian_chevassu/summary) on the [CMake Discourse](https://discourse.cmake.org/t/how-to-install-an-external-project/888) for the advice on making this
