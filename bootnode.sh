#!/bin/bash
if [ ! -f bootnode.key ];then
    bootnode -genkey bootnode.key
fi
killall bootnode
nohup bootnode -nodekey=bootnode.key > bootnode.log&




# op=$(grep enode bootnode.log | awk -F '://' '{print $2}')