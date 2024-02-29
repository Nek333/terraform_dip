variable "zone" {
  description = "Зона доступности для инстанса"
  type        = string
}

variable "subnet_id" {
  description = "ID подсети"
  type        = string
}

variable "image_family" {
  description = "Семейство образа для инстанса"
  type        = string
}

###Создание кластера воркеров
variable "worker_instance_count" {
  description = "Количество создаваемых инстансов"
  type        = number
}

variable "worker_instance_name" {
  description = "Имя инстанса"
  type        = string
}

variable "worker_cloud-init_path" {
  description = "Путь к публичному SSH ключу"
  type        = string
}

variable "worker_cores" {
  description = "Количество CPU ядер для инстанса"
  type        = number
}

variable "worker_memory" {
  description = "Количество памяти для инстанса (в ГБ)"
  type        = number
}

###Создание control pane
variable "cp_instance_count" {
  description = "Количество создаваемых инстансов"
  type        = number
}

variable "cp_instance_name" {
  description = "Имя инстанса"
  type        = string
}

variable "cp_cloud-init_path" {
  description = "Путь к публичному SSH ключу"
  type        = string
}

variable "cp_cores" {
  description = "Количество CPU ядер для инстанса"
  type        = number
}

variable "cp_memory" {
  description = "Количество памяти для инстанса (в ГБ)"
  type        = number
}

###Создание сервера управления
variable "srv_instance_count" {
  description = "Количество создаваемых инстансов"
  type        = number
}

variable "srv_instance_name" {
  description = "Имя инстанса"
  type        = string
}

variable "srv_cloud-init_path" {
  description = "Путь к публичному SSH ключу"
  type        = string
}

variable "srv_cores" {
  description = "Количество CPU ядер для инстанса"
  type        = number
}

variable "srv_memory" {
  description = "Количество памяти для инстанса (в ГБ)"
  type        = number
}