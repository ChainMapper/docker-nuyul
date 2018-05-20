#!/bin/bash
echo "Docker NYL wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/ 

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
NYL: YhXTfgmJUZzBCWbMpDNMRsuzi4S478SA6M"

config="/config/nuyul.conf"
if [ -f "$config" ]
then
    echo "Using $config"
    cp $config /data/.nuyul/nuyul.conf
fi

wallet="/config/wallet.dat"
if [ -f "$wallet" ]
then
    echo "Using $wallet"
    cp $wallet /data/.nuyul/wallet.dat
fi

echo "Starting NYL daemon..."
nuyuld
