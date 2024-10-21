FROM debian 

RUN apt update && apt install -y git openssl socat bash curl wget cron

RUN chsh -s /bin/bash root

WORKDIR /root

RUN git clone https://github.com/acmesh-official/acme.sh.git && cd ./acme.sh && bash acme.sh --install -m wilnil@csh.rit.edu 

COPY issue-cert.sh .

RUN chmod +x issue-cert.sh

CMD bash
