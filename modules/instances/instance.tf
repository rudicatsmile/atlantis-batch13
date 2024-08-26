# terraform {
#   required_providers {
#     google = {
#       source  = "hashicorp/google"
#       version = "4.51.0"
#     }
#   }
# }

# provider "google" {
#   project     = "apt-passage-430503-r9"
#   credentials = "credentials.json"
#   # region = "asia-southeast2"
#   # zone = "aisa-southeast2-a"
# }

resource "google_compute_instance" "vm-1" {
  name                      = var.vm_name
  machine_type              = var.vm_machine_type
  zone                      = var.vm_zone
  allow_stopping_for_update = var.vm_allow_stop_update
  #   desired_status = "TERMINATED"

  #   network tag
  tags = var.vm_network_tags

  boot_disk {
    initialize_params {
      #   image = "ubuntu-os-cloud/ubuntu-2004-lts"
      #   image = data.google_compute_image.ubuntu-2004.self_link
      image = var.vm_images
    }
  }

  network_interface {
    network = var.vm_network

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    ssh-keys = var.ssh_key
  }

}

# resource "google_compute_instance" "vm-2" {
#   name         = "instance-2"
#   machine_type = "e2-micro"
#   zone         = "asia-southeast2-a"

#   #   network tag
#   tags = ["allow-ssh", "allow-ping"]

#   boot_disk {
#     initialize_params {
#       image = data.google_compute_image.debian11.self_link
#     }
#   }

#   network_interface {
#     network = "default"

#     access_config {
#       // Ephemeral public IP
#     }
#   }

#   metadata = {
#     ssh-keys = "rudi:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC5MxsChPviMChGWtKYU8gjtErtvvkNgTijcSAStB83o+zTPUzGSKMgyNQa+GmlvfitmtdhCuIFXPUp27I4sdQYrdm5P+4BT3XIBX37S0klkD0CmJFX2ufNtd5XDDGZW7RjIB9+NO1VJGj7fV2hmInds1eTB5Ex9hXrtP1EEtnoPqQDdQKwP2swptPTED7EKi8/PHPXoUnLSBuptmbov0DGwIpHddtIMZMMQ3lbguniMoA0rcckbvIuDniJOGUzEZoB2pMXlXZlrY5gMAnr0ZmRa6Q23tioKZUnSmlWHTNaMVgq2H43twK1IKe0R/22bK8f3hlibV/h8pBsp5bC6iiUY2W2Y7eDpBCVz9IbQtpmJFJ2oU8yvBR7Hpk1SbcK9zYj2q7IkOMapoZ1uOZRHf6KdifR68AUAa8QDojpUcx/ihsUSk7vuV2tZlGahyc5e4tA3VFqF6C1jCfa+MNsLFcwa82L7w0fIahOl63/sxwAnVhyKnK5WjuUH5a9pZp6obc= rudi@DESKTOP-PGD2958"
#   }


# }

