resource "dns_a_record_set" "nas_prod_1" {
  zone = "qH6FNk.domain.es."
  name = "nas-prod-1"
  addresses = [
    "192.168.50.2"
  ]
  ttl = 3600
}

resource "dns_a_record_set" "rt-1" {
  zone = "qH6FNk.domain.es."
  name = "rt-1"
  addresses = [
    "192.168.50.254"
  ]
  ttl = 3600
}

resource "dns_a_record_set" "sw-1" {
  zone = "qH6FNk.domain.es."
  name = "sw-1"
  addresses = [
    "192.168.50.250"
  ]
  ttl = 3600
}
