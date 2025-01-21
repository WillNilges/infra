I use acme.sh to get certs. This is supposed to run a cronjob in a container
to update it every <90 days.

To force renewal, just cold-boot the docker container. I might've changed the
password on you.

When you renew your cert, you have to restart traefik so it can use it.

https://github.com/acmesh-official/acme.sh/wiki/dnsapi#dns_he
