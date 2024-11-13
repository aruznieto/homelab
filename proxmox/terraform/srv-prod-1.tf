resource "proxmox_vm_qemu" "srv_prod_1" {
    name = "srv-prod-1"
    desc = "Production Server 1"
    vmid = 401
    target_node = "pmx"
    tags = "production,terraform"
    bios = "ovmf"
    scsihw = "virtio-scsi-pci"

    agent = 0

    clone = "ubuntu24-template"
    cores = 2
    sockets = 1
    memory = 2048

    network {
        bridge = "vmbr0"
        model = "virtio"
    }

    disks {
      scsi {
        scsi0 {
          disk {
            size = "20G"
            storage = "local-lvm"
          }
        }
      }
      ide {
        ide2 {
          cloudinit {
            storage = "local-lvm"
          }
        }
      }
    }
    
    os_type = "cloud-init"

    sshkeys = var.PUBLIC_SSH_KEY
    ipconfig0 = "ip=dhcp,ip6=dhcp"
}