terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "2.9.10"
    }
  }
}

provider "proxmox" {
 pm_api_url = "https://kankuro.goldenpoppymsp.com:8006/api2/json"
 pm_api_token_id = "${proxmox_api_token_id}"
 pm_api_token_secret = "${proxmox_api_secret}"
}

resource "proxmox_vm_qemu" "iac_server" {
  name        = "iac_server_${count.index + 1}"
  target_node = "kankuro"
  clone       = "OL8-Template"
  full_clone = "true"

  ### or for a Clone VM operation
  # clone = "template to clone"

  ### or for a PXE boot VM operation
  # pxe = true
  # boot = "net0;scsi0"
  # agent = 0
}