variable "private_networks" {
  description = "Доменное имя DNS зоны"
  type        = list(string)
}
variable "instance_ips" {
  description = "Доменное имя DNS зоны"
  type        = list(string)
}

variable "instance_names" {
  description = "Доменное имя DNS зоны"
  type        = list(string)
}

variable "dns_name" {
  description = "Доменное имя DNS зоны"
  type        = string
}

variable "dns_zone_name" {
  description = "Доменное имя DNS зоны"
  type        = string
}

variable "dns_zone_description" {
  description = "Доменное имя DNS зоны"
  type        = string
}