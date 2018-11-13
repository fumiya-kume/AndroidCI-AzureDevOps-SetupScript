# AndroidCI-AzureDevOps-SetupScript

このリポジトリには以下の内容が含まれています。

- Ubuntu 環境にて Android の ビルド環境を整えるスクリプト
- Azure DevOps への Self-Hosted-Agent の環境を整えるスクリプト

# how to use

あなたは以下のようなコマンドを打つことで簡単にセットアップできます。   
また、Module わけされているため、 Android 環境のセットアップだけしたい場合はそれだけ実行することもできます。

```sh
cd ~
mkdir work
cd work
git clone https://github.com/fumiya-kume/AndroidCI-AzureDevOps-SetupScript.git
cd ~/work/AndroidCI-AzureDevOps-SetupScript/
source ./init.sh {token} {organization {agent-pool} {agent-name}
```

# not detect from Azure DevOps 

if your Azure DevOps cant detect Agent Server,
you can add capability.

https://photos.app.goo.gl/yX3WPSN7upZinGeh9

# how to uninstall 

you can execute ``uninstall.sh``

