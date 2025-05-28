provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

locals {
  network_subnets = flatten([
    for network_key, network in var.networks : [
      for subnet_key, subnet in network.subnets : {
        network_key = network_key
        subnet_key  = subnet_key
        network_id  = google_compute_network.default[network_key].id
        cidr_block  = subnet.cidr_block
      }
    ]
  ])
}

resource "google_compute_network" "default" {
  project                 = var.project_id
  for_each                = var.networks
  name                    = each.key
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "default" {
  for_each = tomap({ for subnet in local.network_subnets : "${subnet.network_key}-${subnet.subnet_key}" => subnet })
  region        = var.region
  name          = each.value.subnet_key
  network       = each.value.network_key
  ip_cidr_range = each.value.cidr_block
}


