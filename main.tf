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