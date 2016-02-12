#!/bin/sh
clear
mpc -p 6700 shuffle > /dev/null 2>&1
wait
echo -e "\x1B[35m ------------------------------------------------------------ \x1B[0m"
echo -e "\x1B[36m ------------------------------------------------------------ \x1B[0m"
mpc -p 6700 playlist
echo -e "\x1B[36m ------------------------------------------------------------ \x1B[0m"
echo -e "\x1B[35m ------------------------------------------------------------ \x1B[0m"
wait
mpc -p 6700 rm custom_playlist > /dev/null 2>&1
wait
mpc -p 6700 save custom_playlist > /dev/null 2>&1
sleep 8