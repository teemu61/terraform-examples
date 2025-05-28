variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "networks" {
  type = map(object({
    subnets = map(object({ cidr_block = string }))
  }))
}
