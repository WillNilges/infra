#!/bin/sh

certbot renew \
--dry-run \
--agree-tos \
--preferred-challenges dns \
--manual-auth-hook /certbot-he-hook.sh \
--manual-cleanup-hook /certbot-he-hook.sh \
--manual-public-ip-logging-ok \
