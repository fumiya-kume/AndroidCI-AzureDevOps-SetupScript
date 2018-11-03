source startAndroidSetup.sh

sh startAzureDevOps.sh $1 $2 $3 $4
cd ~ 
cd agent
sudo ./svc.sh install
sudo ./svc.sh start
