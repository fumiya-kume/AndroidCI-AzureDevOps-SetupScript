SDK_VERSION=4333796
SDK_BUILD_VERSION=28
SDK_BUILD_TOOLS_VERSION=28.0.3

sudo apt install openjdk-8-jdk -y

export ANDROID_HOME='/usr/local/lib/android'
export JAVA_HOME='/usr/lib/jvm/java-1.8.0-openjdk-amd64/'

export PATH=/usr/local/lib/android/tools:/usr/local/lib/android/tools/bin:$PATH

# install Android SDK
sudo apt-get install unzip -y
cd $ANDROID_HOME
sudo wget  --output-document=android-sdk.zip https://dl.google.com/android/repository/sdk-tools-linux-${SDK_VERSION}.zip
sudo unzip android-sdk.zip 
rm -f android-sdk.zip

sudo touch /home/kuxumarin/.android/repositories.cfg
sudo touch /root/.android/repositories.cfg
echo y | sudo ${ANDROID_HOME}/tools/bin/sdkmanager "platforms;android-$SDK_BUILD_VERSION" >/dev/null
echo y | sudo ${ANDROID_HOME}/tools/bin/sdkmanager "platform-tools" >/dev/null
echo y | sudo ${ANDROID_HOME}/tools/bin/sdkmanager "build-tools;$SDK_BUILD_TOOLS_VERSION" >/dev/null

# Android SDK のライセンスに同意する
yes | sudo ${ANDROID_HOME}/tools/bin/sdkmanager --licenses
