#!/bin/sh

#### fm8 ###################
cd ~/md_test/fm8/flash_v1_01/bin
source ./tcp_env.sh
./flash_tcp 2>/dev/null &

#cd ~/md_test/fm8/flash_v1_21/bin
#source ./tcp_env.sh
#./flash_tcp 2>/dev/null &

#cd ~/md_test/fm8/flash_v1_01_multi/bin
#source ./tcp_env.sh
#./flash_tcp 2>/dev/null &

#### sx multi ##############
#source ./multi_env.sh
#./flash_multi 2>/dev/null &

#### fm11 ###################
#cd ~/md_test/fm11/flash_v1_01/bin
#source ./tcp_env.sh
#./flash_tcp 2>/dev/null &

#cd ~/md_test/fm11/flash_v1_21/bin
#source ./tcp_env.sh
#./flash_tcp 2>/dev/null &

#cd ~/md_test/fm11/flash_v1_01_multi/bin
#source ./tcp_env.sh
#./flash_tcp 2>/dev/null &
