# docker-nuyulx
Wallet and daemon for nuyul [NYL] cryptocurrency on docker

# Quickstart
Type `docker run -it joshendriks/nuyul` and see the wallet starting.

```
Docker NYL wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
NYL: YhXTfgmJUZzBCWbMpDNMRsuzi4S478SA6M

Starting NYL daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/nuyul.conf` and `/config/wallet.data`

# Donations:
BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk

NYL: YhXTfgmJUZzBCWbMpDNMRsuzi4S478SA6M

# License
MIT, see LICENSE file