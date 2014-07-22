@echo off

haxelib run hxcpp Build.xml -Dandroid
haxelib run hxcpp Build.xml -Dios
haxelib run hxcpp Build.xml -Dwindows
haxelib run hxcpp Build.xml -Dneko