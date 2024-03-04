
# Модуль Instances для для Terraform (Yandex Cloud)

## Описание

Модуль предназначен для создания инстансов в Yandex Cloud, включая воркеры, control plane и сервер управления. Позволяет настроить количество, тип, параметры сети и инициализацию через cloud-init.

## Переменные

- `zone`: Зона доступности инстансов.
- `subnet_id`: ID подсети для подключения инстансов.
- `image_family`: Семейство образа для создания инстансов.
- `worker_instance_count`, `cp_instance_count`, `srv_instance_count`: Количество инстансов каждого типа.
- `worker_instance_name`, `cp_instance_name`, `srv_instance_name`: Базовые имена для инстансов.
- `worker_cloud-init_path`, `cp_cloud-init_path`, `srv_cloud-init_path`: Пути к файлам cloud-init для настройки.
- `worker_cores`, `cp_cores`, `srv_cores`: Количество ядер CPU.
- `worker_memory`, `cp_memory`, `srv_memory`: Количество оперативной памяти в ГБ.

## Выходные данные

- `worker_ids`, `cp_ids`, `srv_ids`: ID созданных инстансов.
- `worker_external_ips`, `cp_external_ips`, `srv_external_ips`: Внешние IP-адреса инстансов.
- `worker_internal_ips`: Внутренние IP-адреса воркеров.
- `worker_external_names`, `cp_external_names`, `srv_external_names`: Имена инстансов, доступные из внешней сети.
- `worker_external_ips_printable`, `cp_external_ips_printable`, `srv_external_ips_printable`: Внешние IP-адреса в формате map для удобства.

## Пример использования

```hcl
module "instances" {
  source                 = "./modules/instances"
  zone                   = "ru-central1-b"
  subnet_id              = module.network.subnet_id
  image_family           = "ubuntu-2004-lts"
  worker_instance_count  = 2
  cp_instance_count      = 1
  srv_instance_count     = 1
  ...
}
```