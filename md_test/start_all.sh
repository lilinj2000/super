#!/bin/sh

####  zeusing 12345 ###################
cd ~/app/zack_12345/bin
source ./env.sh
./zack >/dev/null 2>&1 &

####  zeusing 12313 ###################
cd ~/app/zack_12313/bin
source ./env.sh
./zack >/dev/null 2>&1 &

####  xele 32003 ###################
cd ~/app/xeon_32003/bin
source ./env.sh
./xeon >/dev/null 2>&1 &

####  xele 32004 ###################
cd ~/app/xeon_32004/bin
source ./env.sh
./xeon >/dev/null 2>&1 &

####  ctp1  ###################
cd ~/app/ctp1/cath_tcp/bin
source ./env.sh
./cath >/dev/null 2>&1 &

cd ~/app/ctp1/cath_udp/bin
source ./env.sh
./cath >/dev/null 2>&1 &

cd ~/app/ctp1/cath_multi/bin
source ./env.sh
./cath >/dev/null 2>&1 &

####  ctp5  ###################
cd ~/app/ctp5/cath_tcp/bin
source ./env.sh
./cath >/dev/null 2>&1 &

cd ~/app/ctp5/cath_udp/bin
source ./env.sh
./cath >/dev/null 2>&1 &

cd ~/app/ctp5/cath_multi/bin
source ./env.sh
./cath >/dev/null 2>&1 &


