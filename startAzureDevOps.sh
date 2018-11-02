 echo $1
 echo $2
 echo $3
 echo $4
 
 $URL=https://$1.visualstudio.com
 echo $URL
 
#$TOKEN=$1
#$ORGANIZATION=$2
#$POOL_NAME=$3
#$AGENT_NAME=$4
cd ~
rm -rf agent
mkdir agent
cd agent
wget https://vstsagentpackage.azureedge.net/agent/2.141.1/vsts-agent-linux-x64-2.141.1.tar.gz
tar zxvf ./vsts-agent-linux-x64-2.141.1.tar.gz
./config.sh --unattended --url $URL --auth pat --token $0 --pool $2 --agent $3 --acceptTeeEula --runAsService
./run.sh
