@echo off

adb shell am force-stop com.example.openflplaytest
adb shell am start -a android.intent.action.DELETE -d package:com.example.openflplaytest
adb shell input tap 464 786
adb install export/android/bin/bin/OpenflPlayTest-debug.apk
adb shell am start -n com.example.openflplaytest/com.example.openflplaytest.MainActivity