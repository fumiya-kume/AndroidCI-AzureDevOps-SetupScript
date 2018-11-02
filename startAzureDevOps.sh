echo $1
 echo $2
 echo $3
 echo $4
 
#$TOKEN=$1
#$ORGANIZATION=$2
#$POOL_NAME=$3
#$AGENT_NAME=$4

wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install dotnet-sdk-2.1 -y
sudo ~/agent/bin/installdependencies.sh 

cd ~
rm -rf agent
mkdir agent
cd agent
wget https://vstsagentpackage.azureedge.net/agent/2.141.1/vsts-agent-linux-x64-2.141.1.tar.gz
tar zxvf ./vsts-agent-linux-x64-2.141.1.tar.gz
./config.sh --unattended --url https://$2.visualstudio.com --auth pat --token $1 --pool $3 --agent $4 --acceptTeeEula --runAsService -y
