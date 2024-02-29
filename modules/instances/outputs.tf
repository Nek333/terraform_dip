output "worker_ids" {
  value = yandex_compute_instance.worker_instance.*.id
}

output "worker_external_ips" {
  value = [for instance in yandex_compute_instance.worker_instance : instance.network_interface.0.nat_ip_address]
}

output "worker_external_names" {
  value = [for instance in yandex_compute_instance.worker_instance : instance.name]
}

output "worker_external_ips_printable" {
  value = { for instance in yandex_compute_instance.worker_instance : instance.name => instance.network_interface.0.nat_ip_address }
}

output "cp_ids" {
  value = yandex_compute_instance.cp_instance.*.id
}

output "cp_external_ips" {
  value = [for instance in yandex_compute_instance.cp_instance : instance.network_interface.0.nat_ip_address]
}

output "cp_external_names" {
  value = [for instance in yandex_compute_instance.cp_instance : instance.name]
}

output "cp_external_ips_printable" {
  value = { for instance in yandex_compute_instance.cp_instance : instance.name => instance.network_interface.0.nat_ip_address }
}

output "srv_ids" {
  value = yandex_compute_instance.srv_instance.*.id
}

output "srv_external_ips" {
  value = [for instance in yandex_compute_instance.srv_instance : instance.network_interface.0.nat_ip_address]
}

output "srv_external_names" {
  value = [for instance in yandex_compute_instance.srv_instance : instance.name]
}

output "srv_external_ips_printable" {
  value = { for instance in yandex_compute_instance.srv_instance : instance.name => instance.network_interface.0.nat_ip_address }
}