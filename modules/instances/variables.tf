variable "vm_name" {
  type        = string
  description = "VM Name"
  #   default     = "instance-1"
}

variable "vm_machine_type" {
  type        = string
  description = "Machine Type"
  default     = "e2-small"
}

variable "vm_zone" {
  type    = string
  default = "asia-southeast2-a"
}

variable "vm_allow_stop_update" {
  type    = bool
  default = false
}

variable "vm_network_tags" {
  type    = list(string)
  default = ["allow-ssh"]
}

variable "vm_images" {
  type    = string
  default = "ubuntu-os-cloud/ubuntu-2004-lts"
}

variable "ssh_key" {
  type    = string
  default = "rudi:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC5MxsChPviMChGWtKYU8gjtErtvvkNgTijcSAStB83o+zTPUzGSKMgyNQa+GmlvfitmtdhCuIFXPUp27I4sdQYrdm5P+4BT3XIBX37S0klkD0CmJFX2ufNtd5XDDGZW7RjIB9+NO1VJGj7fV2hmInds1eTB5Ex9hXrtP1EEtnoPqQDdQKwP2swptPTED7EKi8/PHPXoUnLSBuptmbov0DGwIpHddtIMZMMQ3lbguniMoA0rcckbvIuDniJOGUzEZoB2pMXlXZlrY5gMAnr0ZmRa6Q23tioKZUnSmlWHTNaMVgq2H43twK1IKe0R/22bK8f3hlibV/h8pBsp5bC6iiUY2W2Y7eDpBCVz9IbQtpmJFJ2oU8yvBR7Hpk1SbcK9zYj2q7IkOMapoZ1uOZRHf6KdifR68AUAa8QDojpUcx/ihsUSk7vuV2tZlGahyc5e4tA3VFqF6C1jCfa+MNsLFcwa82L7w0fIahOl63/sxwAnVhyKnK5WjuUH5a9pZp6obc= rudi@DESKTOP-PGD2958"
}

variable "vm_network" {
  type    = string
  default = "default"
}


