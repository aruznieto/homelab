resource "dns_a_record_set" "utils" {
  zone      = "qH6FNk.domain.es."
  name      = "utils"
  addresses = ["192.168.50.3"] // This is the IP address of the server
  ttl       = 3600
}

resource "dns_a_record_set" "wildcard-utils" {
  zone      = "qH6FNk.domain.es."
  name      = "*.utils"
  addresses = ["192.168.50.3"] // This is the IP address of the server
  ttl       = 3600
}

resource "dns_a_record_set" "radio" {
  zone      = "qH6FNk.domain.es."
  name      = "radio"
  addresses = ["192.168.50.4"] // This is the IP address of the server
  ttl       = 3600
}

resource "dns_a_record_set" "wildcard-radio" {
  zone      = "qH6FNk.domain.es."
  name      = "*.radio"
  addresses = ["192.168.50.4"] // This is the IP address of the server
  ttl       = 3600
}

resource "dns_a_record_set" "telegram" {
  zone      = "qH6FNk.domain.es."
  name      = "telegram"
  addresses = ["192.168.50.10"] // This is the IP address of the server
  ttl       = 3600
}

resource "dns_a_record_set" "wildcard-telegram" {
  zone      = "qH6FNk.domain.es."
  name      = "*.telegram"
  addresses = ["192.168.50.10"] // This is the IP address of the server
  ttl       = 3600
}

