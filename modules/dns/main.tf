terraform {
  required_providers {
    yandex  = {
      source = "yandex-cloud/yandex"
    }
  }
}

resource "yandex_dns_zone" "zone1" {
  name        = var.dns_zone_name
  description = var.dns_zone_description

  labels = {
    label1 = "label-1-value"
  }

  zone             = var.dns_name
  public           = true
  private_networks = var.private_networks
}

resource "yandex_dns_recordset" "vm_dns" {
  for_each = {for i, name in var.instance_names: name => var.instance_ips[i]}

  zone_id = yandex_dns_zone.zone1.id
  name    = "${each.key}.${var.dns_name}"
  type    = "A"
  ttl     = 300
  data    = [each.value]
  }