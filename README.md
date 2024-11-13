# Andres's `Homelab`

To generate tsig-key for DNS server use: tsig-keygen -a hmac-sha256

Change qH6FNk.domain.es for your real domain.
Change file => dns > config > named.conf > zone > file

Add DNS server:
1.- dns > config > named.conf > options > forwarder
2.- traefik > config > traefik.yaml > certificatesResolvers > clkoudflare > acme > dnsChallenge > resolvers