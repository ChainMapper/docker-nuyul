# docker-nuyul
Wallet and daemon for nuyul [NYL] cryptocurrency on docker

# Quickstart
Type `docker run -it -e "USER=me" -e "PASSWORD=secret" -e "RPCALLOW=127.0.0.1" chainmapper/nuyul` and see the wallet starting.

Alternatively type `docker run -it -v "<path_to_config>:/config/nuyul.conf" chainmapper/nuyul` to use your own config.

```
Docker NYL wallet

By: ChainMapper
Website: https://chainmapper.com

Starting NYL daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/nuyul.conf` and `/config/wallet.data`

# License
MIT, see LICENSE file