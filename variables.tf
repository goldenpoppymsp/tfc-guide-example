variable "proxmox_api_secret" {
  description = "API Token secret for proxmox"
  type = string
  default = "70cbd7f4-1802-4211-b0a2-0d44a28b6c8c"
}

variable "proxmox_api_token_id" {
  description = "API Token ID for proxmox"
  type = string
  default = "terraform@authentik!terraformcloud"
}