# ID созданной DNS зоны в Yandex Cloud.
output "dns_zone_id" {
  description = "ID созданной DNS зоны в Yandex Cloud"
  value       = yandex_dns_zone.zone1.id
}

# Полные доменные имена (FQDN) созданных записей для инстансов.
output "fqdn_instance_names" {
  description = "Полные доменные имена созданных A записей для инстансов"
  value       = [for name in var.instance_names : "${name}.${var.dns_name}"]
}

# FQDN для CNAME записи 'web'.
output "web_fqdn" {
  description = "Полное доменное имя для CNAME записи 'web'"
  value       = "web.${var.dns_name}"
}
