SDK_VERSION=4333796
SDK_BUILD_VERSION=28
SDK_BUILD_TOOLS_VERSION=28.0.2

# echo "ANDROID_HOME=${ANDROID_ROOT}" | sudo tee -a /etc/environment
# echo "JAVA_HOME=/usr/bin/java" | sudo tee -a /etc/environment

export ANDROID_HOME=/usr/local/lib/android
export JAVA_HOME=/usr/lib/jvm/default-java

# install Android SDK
sudo apt-get install unzip -y
sudo wget  --output-document=android-sdk.zip https://dl.google.com/android/repository/sdk-tools-linux-${SDK_VERSION}.zip
sudo unzip android-sdk.zip -d ${ANDROID_HOME}
rm -f android-sdk.zip
echo y | sudo ${ANDROID_HOME}/tools/bin/sdkmanager "platforms;android-$SDK_BUILD_VERSION" >/dev/null
echo y | sudo ${ANDROID_HOME}/tools/bin/sdkmanager "platform-tools" >/dev/null
echo y | sudo ${ANDROID_HOME}/tools/bin/sdkmanager "build-tools;$SDK_BUILD_TOOLS_VERSION" >/dev/null
# Android SDK のライセンスに同意する
yes | ${ANDROID_HOME}/tools/bin/sdkmanager --licenses
