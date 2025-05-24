resource "digitalocean_vpc" "prod" {
  name     = "personal-website-prod-vpc"
  region   = "sgp1"
  ip_range = "10.0.0.0/16"
}
