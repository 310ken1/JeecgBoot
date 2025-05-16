#!/bin/bash
# Install nvs (Node Version Switcher) & Node.js
sudo chown -R $(id -u):$(id -g) /workspace
git clone https://github.com/jasongin/nvs.git $NVS_HOME
source $NVS_HOME/nvs.sh
nvs add lts
nvs use lts
nvs link lts
echo '. "$NVS_HOME/nvs.sh"' >> /root/.bashrc
echo 'nvs use lts' >> /root/.bashrc

# Install pnpm
npm install -g pnpm@latest-10
cd /workspace/jeecgboot-vue3/
pnpm install

cd ~
# Install AWS CLI
# https://docs.aws.amazon.com/ja_jp/cli/latest/userguide/getting-started-install.html
#curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
#unzip awscliv2.zip
#sudo ./aws/install
