module "webserver-instance" {
  source          = "../../../../modules/instances"
  vm_name         = "webserver-1"
  vm_machine_type = "e2-micro"
  vm_network_tags = ["allow-ssh", "allow-jenkins"]
  vm_images       = "ubuntu-os-cloud/ubuntu-2004-lts"
}


module "webserver-2" {
  source          = "../../../../modules/instances"
  vm_name         = "webserver-2"
  vm_machine_type = "e2-micro"
  vm_network_tags = ["allow-ssh", "allow-jenkins"]
  vm_images       = "ubuntu-os-cloud/ubuntu-2004-lts"
}

output "webserver-1-ip-public" {
  value = module.webserver-instance.vm_ip_public
}

output "webserver-1-ip-private" {
  value = module.webserver-instance.vm_ip_private
}

output "webserver-2-ip-public" {
  value = module.webserver-2.vm_ip_public
}

output "webserver-2-ip-private" {
  value = module.webserver-2.vm_ip_private
}


