variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "tags" {
  type = list(string)
}

variable "name" {
  type    = string
  default = "puppu"
}

variable "allow" {
  type = list(object({
    protocol = string
    ports    = list(string)
  }))
}

variable "networks" {
  type = map(object({
    ip_cidr_range = string
  }))
}


