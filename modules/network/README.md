# Модуль Network для Yandex Cloud

## Описание

Модуль предназначен для создания виртуальной частной сети (VPC) и подсети в Yandex Cloud. Позволяет настроить базовую сетевую инфраструктуру для развертывания облачных ресурсов.

## Переменные

- `network_name`: Имя создаваемой сети в Yandex Cloud.
- `subnet_name`: Имя создаваемой подсети в сети.
- `zone`: Зона доступности для создаваемой подсети.
- `cidr_block`: CIDR блок для подсети, определяющий диапазон доступных IP-адресов.

## Выходные данные

- `network_id`: ID созданной сети в Yandex Cloud.
- `subnet_id`: ID созданной подсети в сети.

## Пример использования

```hcl
module "network" {
  source       = "./modules/network"
  network_name = "my-vpc"
  subnet_name  = "my-subnet"
  zone         = "ru-central1-a"
  cidr_block   = "192.168.10.0/24"
}