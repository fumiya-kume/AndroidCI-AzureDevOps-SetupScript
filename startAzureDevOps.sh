 if[ $# -ne 3]; then
 	echo "FileName $TOKEN $ORGANIZATION $POOL_NAME $AGENT_NAME"
 fi
 
$TOKEN=$1
$ORGANIZATION=$2
$POOL_NAME=$3
$AGENT_NAME=$4
cd ~
mkdir agent
cd agent
wget https://vstsagentpackage.azureedge.net/agent/2.141.1/vsts-agent-linux-x64-2.141.1.tar.gz
tar zxvf ./vsts-agent-linux-x64-2.141.1.tar.gz
./config.sh --unattended --url https://$ORGANIZATION.visualstudio.com --auth pat --token $TOKEN --pool $POOL_NAME --agent $AGENT_NAME --acceptTeeEula --runAsService
./run.sh
