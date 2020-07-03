# Creamos un dominio nuevo

resource "digitalocean_domain" "sosafernando" {
  name = "sosafernando.com"
}

# Add a record to the domain
resource "digitalocean_record" "mail" {
  domain = "${digitalocean_domain.sosafernando.name}"
  type   = "A"
  name   = "mail"
  ttl    = "10"
  value  = "${digitalocean_droplet.mail.ipv4_address}"
}

