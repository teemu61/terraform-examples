provider "google" {
  project = var.project_id
  region  = var.region
}

module "fw-dynamic" {
  source     = "./modules/vpc-network-module"
  project_id = var.project_id
  region     = var.region
  zone       = var.zone
  tags       = var.tags
  allow      = var.allow

  for_each      = var.networks
  prefix        = each.key
  ip_cidr_range = each.value.ip_cidr_range
}

