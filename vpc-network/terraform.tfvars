project_id = "woven-operative-454517-f9"
region     = "europe-north1"
zone       = "europe-north1-a"
tags       = ["web", "testi"]

allow = [
  { ports = ["3000-4000"], protocol = "udp" },
  { ports = ["80", "8080", "1000-2000"], protocol = "tcp" },
  { ports = [], protocol = "icmp" }
]

networks = {
  testi1 = { ip_cidr_range = "10.6.1.0/24" }
  testi2 = { ip_cidr_range = "10.6.2.0/24" }
}