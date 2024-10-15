resource "proxmox_vm_qemu" "mrserver" {
  name = "ubuntu-machine-runner-server"
  desc = "Machine Runner for Self Hosted CircleCI Server."
  vmid = 101
  os_type = "ubuntu"
  target_node = "proxmox0"
  clone = "ubuntu24.04-server-template"
  cores = 4
  memory = 8192
  skip_ipv6 = true
  disk {
    slot     = "scsi0"
    size     = "150G"
    type     = "disk"
    storage  = "local-lvm"
  }
  network {
    model  = "virtio"
    bridge = "vmbr0"
  }
}

resource "proxmox_vm_qemu" "nomad_client" {
  name = "ubuntu-nomad-client"
  desc = "Nomad Client for Self Hosted CircleCI Server."
  vmid = 102
  os_type = "ubuntu"
  target_node = "proxmox0"
  clone = "ubuntu24.04-server-template"
  cores = 6
  memory = 10240
  skip_ipv6 = true
  disk {
    slot     = "scsi0"
    size     = "150G"
    type     = "disk"
    storage  = "local-lvm"
  }
  network {
    model  = "virtio"
    bridge = "vmbr0"
  }
}