variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "allow" {
  type = list(object({
    protocol  = string
    ports     = list(string)
  }))
}

variable "ip_cidr_range" {
  type = string
}

variable "prefix" {
  type = string
}

variable "tags" {
  type = list(string)
}