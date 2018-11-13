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

()[https://lh3.googleusercontent.com/oLSZD5BaHNE-ZDN_DgwSMnCOMcN5Y-KgaL2s8fJSKMesr23Dow8SEc_IrWlN4OjdKlKB9Pedkj8xNpWGGlJ9qnEEyjS7axRYxWTA5CTlFE1VkkrK5USB-l71lPQ4C6YKjezX3WbqputSoRa9tMLsxPPRB_u97f19yjAdqPzjnQ6RFwaz4p1v8k9dgnUDKzw8rZNCJcyOvO4M7JAcchBHJ5o2GffN1RbuWp-qCpLofpQ6hClzhButHDPK-E84xe20unbx55Nh_OtZUiKyqVD9pXJggSyz-SBCZ-pMPkPDAKW10F56LaU22JSKBjA64Ui_yGgZDlPZ94qBAB9NGPK_MUxNAmfFXBk_oguTLmBGEVhJ-4lNfCJgm0HgX6mmorn-UDHZW1tHyq_0lMdSNQCYAyTcIDNrh-WyFGjmf51RkD5FyfM2P_FG1D32V_KERALU9slvYydQCDxJ0x3G5X7nk0KFTyhKZTDxggnFp-BewOJ9HA1VTdnMbqvjmyNO1TwyOSuPNH25bRYKql-VRge25gK4tlnFJHh-8BTxIbsiCoV96HmMAZHJEj5aObDyCOmULLGqJMbWme2GgxUuDy3t5xfQjxVIIKiUjvpPhQ8lCM7x0Nwhih4hp3C10oJ1mKdQFrVohBusth3s2XzLwFfwe54kTxkMcER3ao8rKEznb_p1sA=w1176-h366-no}

# how to uninstall 

you can execute ``uninstall.sh``

