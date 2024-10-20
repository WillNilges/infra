#!/bin/sh
curl "https://dyn.dns.he.net/nic/update" -d "hostname=_acme-challenge.${CERTBOT_DOMAIN}" -d "password=${HE_PASS}" -d "txt=${CERTBOT_VALIDATION}"
