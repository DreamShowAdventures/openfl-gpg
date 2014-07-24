@echo off

echo y | rd obj /s
haxelib run hxcpp Build.xml -Dandroid -DHXCPP_ARMV7
haxelib run hxcpp Build.xml -Diphone -DHXCPP_ARMV7