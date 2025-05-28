provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_address" "ip_address" {
  name = "my-address-${var.name_suffix}"
}