sudo ANDROID_HOME=/home/faizan/Android PATH=$PATH:/opt/gradle/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools ionic cordova build --release android
sudo keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
sudo jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore ./platforms/android/build/outputs/apk/android-release-unsigned.apk alias_name
sudo zipalign -v 4 ./platforms/android/build/outputs/apk/android-release-unsigned.apk ./platforms/android/build/outputs/apk/android-release.apk
