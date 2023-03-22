provider "proxmox" {
  pm_api_url = "https://<pve_ip>:8006/api2/json"
  pm_user = "<pve_username>"
  pm_password = "<pve_password>"
  pm_tls_insecure = true
}

resource "proxmox_vm_qemu" "example" {
  name = "example"
  memory = 1024
  cores = 1
  sockets = 1
  vcpus = 1
  scsihw = "virtio-scsi-pci"
  os_type = "l26"
  ide2 = "local:iso/<iso_name>.iso,media=cdrom"
  net0 = "virtio=<network_name>,bridge=<bridge_name>"
}
