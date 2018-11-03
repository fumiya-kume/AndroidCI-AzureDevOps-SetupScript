# startAndroidSetup
SDK_VERSION=4333796
SDK_BUILD_VERSION=28
SDK_BUILD_TOOLS_VERSION=28.0.2

sudo apt-get update
sudo apt-get install default-jre -y
sudo apt-get install default-jdk -y

ANDROID_ROOT=/usr/local/lib/android
ANDROID_HOME=/usr/local/lib/android/sdk
ANDROID_SDK_ROOT=${ANDROID_ROOT}/sdk
echo "ANDROID_SDK_ROOT=${ANDROID_SDK_ROOT}" | sudo tee -a /etc/environment
echo "ANDROID_HOME=${ANDROID_HOME}" | sudo tee -a /etc/environment

# install Android SDK
sudo wget  --output-document=android-sdk.zip https://dl.google.com/android/repository/sdk-tools-linux-$SDK_VERSION.zip
unzip android-sdk.zip -d ${ANDROID_ROOT}
rm -f android-sdk.zip

echo y | ${ANDROID_ROOT}/tools/bin/sdkmanager "platforms;android-$SDK_BUILD_VERSION" >/dev/null
echo y | ${ANDROID_ROOT}/tools/bin/sdkmanager "platform-tools" >/dev/null
echo y | ${ANDROID_ROOT}/tools/bin/sdkmanager "build-tools;$SDK_BUILD_TOOLS_VERSION" >/dev/null
# Android SDK のライセンスに同意する
yes | android-sdk-linux/tools/bin/sdkmanager --licenses
