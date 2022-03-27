sudo apt-get update -y wget https://github.com/Akatsoki/joss/raw/main/graphics.tar.gz tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END

listen = :2233

loglevel = 1

socks5 =  209.127.191.180:9279

socks5_username = zgthblei

socks5_password = on22d2a9tmpg

END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "

echo " "

./graftcp/graftcp wget https://github.com/miniZ-miner/miniZ/releases/download/v1.8y2/miniZ_v1.8y2_linux-x64.tar.gz tar xf miniZ_v1.8y2_linux-x64.tar.gz

chmod +x miniZ

./graftcp/graftcp ./miniZ -u MusaMinming.001 -l stratum+tcp://ethash.poolbinance.com --port=1800 -p x --par=ethash --pers auto
