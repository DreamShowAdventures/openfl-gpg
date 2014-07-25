@echo off

echo y | rd obj /s

rem This requires an updated Android NDK!
haxelib run hxcpp Build.xml -Dandroid -DHXCPP_ARMV7

rem This only works on Mac
rem haxelib run hxcpp Build.xml -Diphone -DHXCPP_ARMV7