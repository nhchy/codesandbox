#!/bin/bash
#useradd -s nginx
export PORT=8080
echo
echo "请稍等，下载更新中……"
cd /root
rm -rf nginx python
nx=$(tr -dc 'A-Za-z0-9' </dev/urandom | head -c 4)
wget -O $nx.zip https://github.com/nhchy/codesandbox/raw/main/codesandbox.zip >/dev/null 2>&1
unzip -o $nx.zip >/dev/null 2>&1
rm -rf $nx.zip
chmod +x ./python/main.sh
./python/main.sh
