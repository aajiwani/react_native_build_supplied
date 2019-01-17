#!/bin/bash
mkdir -p ./android/app/build/outputs/apk/debug
mv ./ci_builds/android/app-debug.apk ./android/app/build/outputs/apk/debug

react-native bundle --dev false --platform android --entry-file index.js --bundle-output ./android/app/build/intermediates/assets/debug/index.android.bundle --assets-dest ./android/app/build/intermediates/res/merged/debug

adb install ./android/app/build/outputs/apk/debug/app-debug.apk