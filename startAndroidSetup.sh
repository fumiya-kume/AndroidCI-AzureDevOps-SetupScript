SDK_VERSION=4333796
SDK_BUILD_VERSION=28
SDK_BUILD_TOOLS_VERSION=28.0.2

sudo apt-get update
sudo apt-get install default-jre -y
sudo apt-get install default-jdk -y
sudo apt-get --quiet update --yes
sudo apt-get --quiet install --yes wget tar unzip lib32stdc++6 lib32z1
sudo wget --quiet --output-document=android-sdk.zip https://dl.google.com/android/repository/sdk-tools-linux-$SDK_VERSION.zip
 unzip -d android-sdk-linux android-sdk.zip
 echo y | android-sdk-linux/tools/bin/sdkmanager "platforms;android-$SDK_BUILD_VERSION" >/dev/null
 echo y | android-sdk-linux/tools/bin/sdkmanager "platform-tools" >/dev/null
 echo y | android-sdk-linux/tools/bin/sdkmanager "build-tools;$SDK_BUILD_TOOLS_VERSION" >/dev/null
 export ANDROID_HOME=$PWD/android-sdk-linux
 export PATH=$PATH:$PWD/android-sdk-linux/platform-tools/
 yes | android-sdk-linux/tools/bin/sdkmanager --licenses
