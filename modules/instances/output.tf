output "vm_ip_public" {
  value = google_compute_instance.vm-1[*].network_interface[0].access_config[0].nat_ip
}

# output "vm2_ip_public" {
#   value = google_compute_instance.vm-2.network_interface[0].access_config[0].nat_ip
# }

output "vm_ip_private" {
  value = google_compute_instance.vm-1.network_interface[0].network_ip
}
