resource "digitalocean_vpc" "prod" {
  name     = "personal-website-vpc-prod"
  region   = "sgp1"
  ip_range = "10.0.0.0/16"
}
