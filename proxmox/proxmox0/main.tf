resource "proxmox_vm_qemu" "mrserver" {
  name = "ubuntu_machine_runner_server"
  desc = "Machine Runner for Self Hosted CircleCI Server."
  os_type = "ubuntu"
  target_node = "proxmox0"
  clone = ""
  storage = ""
  cores = 4
  memory = 16384
  skip_ipv6 = true
  disk {
    slot     = 0
    size     = "150G"
    type     = "scsi"
    storage  = "local-lvm"
  }
}

resource "proxmox_vm_qemu" "nomad_client" {
  name = "ubuntu_nomad_client"
  desc = "Nomad Client for Self Hosted CircleCI Server."
  os_type = "ubuntu"
  target_node = "proxmox0"
  clone = ""
  storage = ""
  cores = 6
  memory = 10240
  skip_ipv6 = true
  disk {
    slot     = 0
    size     = "150G"
    type     = "scsi"
    storage  = "local-lvm"
  }
}

