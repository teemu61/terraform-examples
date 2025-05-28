
resource "google_compute_network" "default" {
  name                    = "${var.prefix}-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "default" {
  name          = "${var.prefix}-subnet"
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
  network       = google_compute_network.default.id
}

resource "google_compute_firewall" "default" {
  name    = "${var.prefix}-firewall"
  network = google_compute_network.default.name
  project = var.project_id

  dynamic "allow" {
    for_each = var.allow
    content {
      protocol  = allow.value.protocol
      ports     = allow.value.ports
    }
  }
  source_tags = var.tags
}
