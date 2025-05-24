resource "digitalocean_kubernetes_cluster" "prod" {
  name           = "personal-website-cluster-prod"
  region         = "sgp1"
  version        = "1.32.2-do.1"
  vpc_uuid       = digitalocean_vpc.prod.id
  cluster_subnet = "10.108.0.0/16"
  service_subnet = "10.109.0.0/19"
  ha             = false

  node_pool {
    name       = "personal-website-prod-pool"
    size       = "s-1vcpu-1gb"
    node_count = 2
  }

  maintenance_policy {
    day        = "sunday"
    start_time = "02:00"
  }
}
