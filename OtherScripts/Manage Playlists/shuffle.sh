#!/bin/sh -e
mpc -p 6700 shuffle >/dev/null
wait
mpc -p 6700 playlist
wait
sleep 10
mpc -p 6700 save custom_playlist >/dev/null