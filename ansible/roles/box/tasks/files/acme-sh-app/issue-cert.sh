#!/bin/bash

~/acme.sh/acme.sh --set-default-ca --server letsencrypt
~/acme.sh/acme.sh --issue --dns dns_he -d willard.gay -d *.willard.gay

# Fine, I guess I'll set up the cronjob myself
echo '0 0 * * * "/root/.acme.sh"/acme.sh --cron --home "/root/.acme.sh" > /dev/null' | crontab -
