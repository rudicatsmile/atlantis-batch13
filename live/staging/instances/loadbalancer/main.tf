module "load-balancer-instance" {
  source          = "../../../../modules/instances"
  vm_name         = "load-balancer-1"
  vm_machine_type = "e2-small"
  vm_network_tags = ["allow-ssh", "http-server"]
  vm_images       = "ubuntu-os-cloud/ubuntu-2204-lts"
}
