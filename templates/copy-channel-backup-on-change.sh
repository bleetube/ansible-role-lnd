#!/bin/bash
mkdir -p {{ lnd_path }}/archive
while true; do
    inotifywait {{ lnd_path }}/data/chain/bitcoin/mainnet/channel.backup
    cp {{ lnd_path }}/.lnd/data/chain/bitcoin/mainnet/channel.backup {{ lnd_path }}/archive/channel.backup
done

