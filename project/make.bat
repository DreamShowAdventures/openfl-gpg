@echo off

rem Has flags due to the following error:
rem This file requires compiler and library support for the upcoming ISO C++ standard, C++0x.
rem This support is currently experimental, and must be enabled with the -std=c++0x or -std=gnu++0x compiler options.
haxelib run hxcpp Build.xml -Dandroid -Dstd=c++0x
haxelib run hxcpp Build.xml -Dios -Dstd=c++0x