#!/bin/bash

~/acme.sh/acme.sh --set-default-ca --server letsencrypt
~/acme.sh/acme.sh --force --issue --dns dns_he -d willard.gay -d *.willard.gay
