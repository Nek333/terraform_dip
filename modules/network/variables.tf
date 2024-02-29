variable "network_name" {
  description = "Имя сети"
  type        = string
}

variable "subnet_name" {
  description = "Имя подсети"
  type        = string
}

variable "zone" {
  description = "Зона доступности"
  type        = string
}

variable "cidr_block" {
  description = "CIDR блок для подсети"
  type        = string
}