FROM certbot/certbot

RUN apk add curl

WORKDIR /

# Ugh. Certbot container is giving me a hard time. Maybe because I'm asking it
# to run with BASH. MY scripts are working, so IDK what the deal is, but I'll
# entertain it for now.
#RUN wget https://raw.githubusercontent.com/angel333/certbot-he-hook/d03de4a81300723e255f029e451f6fd9cbc512ac/certbot-he-hook.sh && chmod +x certbot-he-hook.sh

COPY certonly.sh renew.sh certbot-he-hook.sh .

RUN chmod +x certonly.sh renew.sh certbot-he-hook.sh
