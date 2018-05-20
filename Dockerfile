FROM joshendriks/walletbase

RUN apt-get update \
    && apt-get -y upgrade \
	&& apt-get -y install build-essential libssl-dev libdb-dev libdb++-dev libboost-all-dev git libssl1.0.0-dbg \
	&& apt-get -y install libdb-dev libdb++-dev libboost-all-dev libminiupnpc-dev libminiupnpc-dev libevent-dev libcrypto++-dev libgmp3-dev libzmq3-dev

ADD ./ ./

RUN tar xvzf /Nuyulx-linux-wallet-gnu.tar.gz && \
	rm /Nuyulx-linux-wallet-gnu.tar.gz && \
	cp /wallet/nuyul-cli /usr/local/bin/ && \
	cp /wallet/nuyul-tx /usr/local/bin/ && \
	cp /wallet/nuyuld /usr/local/bin/ && \
 	mkdir -p /data/.nuyul/

#Add a config so you can run without providing a nuyul.conf through a volume
COPY nuyul.conf /data/.nuyul/nuyul.conf
	
EXPOSE 38843

ENV HOME /data

COPY start.sh /start.sh
RUN chmod 777 /start.sh
CMD /start.sh