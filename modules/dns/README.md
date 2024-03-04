# Модуль DNS для Yandex Cloud

## Описание

Модуль предназначен для создания DNS зоны в Yandex Cloud и настройки записей для инстансов и веб-сервисов.

## Переменные

- `private_networks`: Список ID приватных сетей для доступа к DNS зоне.
- `instance_ips`: Список IP-адресов инстансов для создания A записей.
- `instance_names`: Список имен инстансов для создания A записей.
- `dns_name`: Доменное имя для DNS зоны.
- `dns_zone_name`: Имя DNS зоны в Yandex Cloud.
- `dns_zone_description`: Описание DNS зоны.

## Выходные данные

- `dns_zone_id`: ID созданной DNS зоны.
- `fqdn_instance_names`: Полные доменные имена созданных A записей для инстансов.
- `web_fqdn`: Полное доменное имя для CNAME записи 'web'.

## Пример использования

```hcl
module "dns" {
  source                = "./modules/dns"
  private_networks      = ["e9b1u0dh00000f3c8m30"]
  instance_ips          = ["192.168.10.20", "192.168.10.21"]
  instance_names        = ["instance1", "instance2"]
  dns_name              = "example.com."
  dns_zone_name         = "example-zone"
  dns_zone_description  = "My DNS zone"
}
