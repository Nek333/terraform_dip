terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  zone = "ru-central1-b"
}

module "network" {
  source       = "./modules/network"
  network_name = "sf-diploma-network"
  subnet_name  = "sf-diploma-subnet"
  zone         = "ru-central1-b"
  cidr_block   = "10.0.0.0/24"
}

module "instances" {
  source                 = "./modules/instances"
  subnet_id              = module.network.subnet_id
  zone                   = "ru-central1-b"
  image_family           = "ubuntu-2004-lts"
  worker_instance_count  = 3
  cp_instance_count      = 1
  srv_instance_count     = 1
  worker_instance_name   = "sf-dip-worker"
  cp_instance_name       = "sf-diploma-cp"
  srv_instance_name      = "sf-diploma-srv"
  worker_cores           = 2
  cp_cores               = 2
  srv_cores              = 2
  worker_memory          = 2
  cp_memory              = 2
  srv_memory             = 4
  worker_cloud-init_path = "init-files/cloud-init-worker.yaml"
  cp_cloud-init_path     = "init-files/cloud-init-cp.yaml"
  srv_cloud-init_path    = "init-files/cloud-init-srv.yaml"
}

module "dns" {
  source                = "./modules/dns"
  private_networks      = [module.network.network_id]
  instance_ips          = concat(module.instances.worker_external_ips, module.instances.cp_external_ips, module.instances.srv_external_ips)
  instance_names        = concat(module.instances.worker_external_names, module.instances.cp_external_names, module.instances.srv_external_names)
  dns_name              = "skillfactory-ermolaev.ru."
  dns_zone_name         = "skillfactory-ermolaev-ru"
  dns_zone_description  = "skillfactory-ermolaev-ru"
}
