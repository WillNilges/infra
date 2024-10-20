#!/bin/sh

certbot certonly \
--agree-tos \
--dry-run \
--preferred-challenges dns \
--email ${EMAIL} \
--manual \
--manual-auth-hook /certbot-he-hook.sh  \
--manual-cleanup-hook /certbot-he-hook.sh \
--manual-public-ip-logging-ok \
--domain ${DOMAIN}
