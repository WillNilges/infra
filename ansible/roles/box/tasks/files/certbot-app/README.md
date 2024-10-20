```
  1) Create a new certificate for a domain:
     HE_USER=<username> HE_PASS=<password> certbot certonly \\
       --preferred-challenges dns \\
       --email your@email.com \\
       --manual \\
       --manual-auth-hook /path/to/certbot-he-hook.sh  \\
       --manual-cleanup-hook /path/to/certbot-he-hook.sh  \\
       --manual-public-ip-logging-ok \\
       --domain <requested.domain.com>
  
  2) Renew certificates for all domains:
          
     HE_USER=<username> HE_PASS=<password> certbot renew \\
       --preferred-challenges dns \\
       --manual-auth-hook /path/to/certbot-he-hook.sh  \\
       --manual-cleanup-hook /path/to/certbot-he-hook.sh  \\
       --manual-public-ip-logging-ok
```
