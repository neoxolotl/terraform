#
# Exportamos nuestra key SSH

resource "digitalocean_ssh_key" "fsosa" {
  name       = "fsosa"
  public_key = "${file("id_rsa.pub")}"
}

