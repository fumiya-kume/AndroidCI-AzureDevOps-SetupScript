SDK_VERSION=4333796
SDK_BUILD_VERSION=28
SDK_BUILD_TOOLS_VERSION=28.0.2

sudo apt install openjdk-8-jdk -y

export ANDROID_HOME=/usr/local/lib/android
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64/

# install Android SDK
sudo apt-get install unzip -y
sudo wget  --output-document=android-sdk.zip https://dl.google.com/android/repository/sdk-tools-linux-${SDK_VERSION}.zip
sudo unzip android-sdk.zip -d ${ANDROID_HOME} 
rm -f android-sdk.zip

touch /root/.android/repositories.cfg 
echo y | sudo ${ANDROID_HOME}/tools/bin/sdkmanager "platforms;android-$SDK_BUILD_VERSION" >/dev/null
echo y | sudo ${ANDROID_HOME}/tools/bin/sdkmanager "platform-tools" >/dev/null
echo y | sudo ${ANDROID_HOME}/tools/bin/sdkmanager "build-tools;$SDK_BUILD_TOOLS_VERSION" >/dev/null

# Android SDK のライセンスに同意する
yes | sudo ${ANDROID_HOME}/tools/bin/sdkmanager --licenses
