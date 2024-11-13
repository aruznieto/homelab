# Andres's `Homelab`

> [!NOTE]
> To generate tsig-key for DNS server use: tsig-keygen -a hmac-sha256


>[!IMPORTANT]
> Change qH6FNk.domain.es for your real domain.
> Change file => dns > config > named.conf > zone > file

>[!IMPORTANT]
> Add DNS server:
>
>1.- dns > config > named.conf > options > forwarder
>
>2.- traefik > config > traefik.yaml > certificatesResolvers > clkoudflare > acme > dnsChallenge > resolvers
