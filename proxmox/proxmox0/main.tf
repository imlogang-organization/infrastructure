//To create a new VM, just copy/paste a current one, 
//change Disk size and CPU/Memory,
//and then increase the VMID by 1. 

resource "proxmox_vm_qemu" "nomad_client" {
  name = "ubuntu-nomad-client"
  desc = "Nomad Client for Self Hosted CircleCI Server."
  vmid = 102
  os_type = var.os_type
  target_node = var.target_node
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

resource "proxmox_vm_qemu" "ubuntu-k8s-7" {
  name = "ubuntu-k8s-7"
  desc = "Part of the Control plane for my Kubernetes Cluster so we can get HA plus have a node tainted for only CI workloads."
  vmid = 104
  os_type = var.os_type
  target_node = var.target_node
  clone = var.os_template
  cores = 8
  memory = 12288
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

resource "proxmox_vm_qemu" "mrserver_new" {
  name = "ubuntu-machine-runner-server-new"
  desc = "Machine Runner for Self Hosted CircleCI Server."
  vmid = 106
  os_type = var.os_type
  target_node = var.target_node
  clone = var.os_template
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