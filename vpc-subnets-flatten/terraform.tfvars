project_id = "woven-operative-454517-f9"
region     = "europe-north1"
zone       = "europe-north1-a"

networks = {
  "private" = {
    subnets = {
      "db1" = { cidr_block = "10.5.0.0/16" }
      "db2" = { cidr_block = "10.6.0.0/16" }
    }
  },
  "public" = {
    subnets = {
      "webserver"   = { cidr_block = "10.7.0.0/16" }
      "emailserver" = { cidr_block = "10.8.0.0/16" }
    }
  }
  "dmz" = {
    subnets = {
      "firewall" = { cidr_block = "10.9.0.0/16" }
    }
  }
}

