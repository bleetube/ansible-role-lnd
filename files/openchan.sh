#!/bin/bash
# open a channel

if [ -z $1 ];then
    echo "Usage ${0} <pubkey@host> [amount]"
    exit 1
fi
if [ -z $2 ];then
    CHAN_CAPACITY=1000000
else
    CHAN_CAPACITY=${2}
fi

CHAINFEE=1
CHAN_PUBKEY=$(echo ${1} | cut -d \@ -f1)
PEER_ADDRESS=$(echo ${1} | cut -d \@ -f2)

lncli openchannel --node_key ${CHAN_PUBKEY} --connect ${PEER_ADDRESS} --sat_per_byte ${CHAINFEE} --local_amt ${CHAN_CAPACITY}

