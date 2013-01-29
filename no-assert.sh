#!/sbin/sh

mkdir -p /sdcard/clockworkmod/no-assert/META-INF/com/google/android/
cd /sdcard/clockworkmod/no-assert/
unzip -p $1 META-INF/com/google/android/updater-script > META-INF/com/google/android/updater-script
sed -i '/getprop/d' META-INF/com/google/android/updater-script
zip -u $1 META-INF/com/google/android/updater-script
