FROM debian:buster

RUN apt update && apt install -y curl jq

WORKDIR /data

ADD substrate /usr/bin/substrate
ADD customSpecRaw.json /data
ADD https://github.com/sclevine/yj/releases/download/v5.0.0/yj-linux /usr/bin/yj

RUN chmod +x /usr/bin/substrate
RUN ln -sf substrate /usr/bin/subplay
RUN chmod +x /usr/bin/yj

ENTRYPOINT ["subplay"]
