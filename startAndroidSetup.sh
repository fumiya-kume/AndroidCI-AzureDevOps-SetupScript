sudo apt-get update

# Install Java
sudo apt install openjdk-8-jdk -y
export JAVA_HOME='/usr/lib/jvm/java-1.8.0-openjdk-amd64/'

# Install unzip command
sudo apt-get install unzip -y

# Install Android SDK
export ANDROID_HOME='/usr/local/lib/android'
sudo mkdir /usr/local/lib/android
cd /usr/local/lib/android
sudo wget  --output-document=android-sdk.zip https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
sudo unzip android-sdk.zip 
rm -rf android-sdk.zip 
cd tools/bin/

sudo mkdir /root/.android
sudo touch /root/.android/repositories.cfg
echo y | sudo ./sdkmanager "platforms;android-28" >/dev/null
echo y | sudo ./sdkmanager "platform-tools" >/dev/null
echo y | sudo ./sdkmanager "build-tools;28.0.3" >/dev/null

yes | sudo ./sdkmanager --licenses
