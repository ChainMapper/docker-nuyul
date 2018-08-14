FROM chainmapper/walletbase-xenial

ADD ./ ./

RUN tar xvzf /Nuyulx-linux-wallet-gnu.tar.gz && \
	rm /Nuyulx-linux-wallet-gnu.tar.gz && \
	cp /wallet/nuyul-cli /usr/local/bin/ && \
	cp /wallet/nuyul-tx /usr/local/bin/ && \
	cp /wallet/nuyuld /usr/local/bin/
RUN mkdir /data
ENV HOME /data

#rpc port & main port
EXPOSE 6666 60203

COPY start.sh /start.sh
COPY gen_config.sh /gen_config.sh
RUN chmod +x /*.sh
CMD /start.sh nuyul.conf NYL nuyuld