@echo off

haxelib run hxcpp Build.xml -Dandroid -DHXCPP_ARMV7
haxelib run hxcpp Build.xml -Diphone
haxelib run hxcpp Build.xml -Dwindows
rem haxelib run hxcpp Build.xml -Dneko