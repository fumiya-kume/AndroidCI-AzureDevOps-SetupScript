sudo apt-get update
sudo apt-get install default-jre -y
sudo apt-get install default-jdk -y
source startAndroidSetup.sh

sh startAzureDevOps.sh $1 $2 $3 $4
cd ~ 
cd agent
sudo ./svc.sh install
sudo ./svc.sh start
