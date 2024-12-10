# Environment
########################################################################
env_name       = "surikbs"
location       = null
cluster_number = "01"
cluster_domain = "local"
# If using this project version >= 4.0.0 with a previously provisioned cluster,
# check this setting: https://github.com/khanh-ph/proxmox-kubernetes/releases/tag/4.0.0
use_legacy_naming_convention = false

# Proxmox VE
########################################################################
# Proxmox VE API details and VM hosting configuration
# API token guide: https://registry.terraform.io/providers/Telmate/proxmox/latest/docs
pm_api_url          = "https://192.168.1.2:8006/api2/json"
pm_api_token_id     = "root@pam!surikbs"
pm_api_token_secret = "c44d0a7b-2a7f-4327-b893-1d0ddebd8890"
pm_tls_insecure     = true
pm_host             = "pve"
pm_parallel         = 2
pm_timeout          = 600


# Common infrastructure configurations
########################################################################
# Kubernetes internal network
internal_net_name = "vmbr1"
# Internal network CIDR
internal_net_subnet_cidr = "10.0.1.0/24"
# Base64 encoded keys for Kubernetes admin authentication
ssh_public_keys = "c3NoLWVkMjU1MTkgQUFBQUMzTnphQzFsWkRJMU5URTVBQUFBSUxMS2h2ZFNFMk5ERklKeFNyTnVWRVpCbSsyV2N5cHltUXhPbGJ5aVhhdTIgc3VyaWtic0BTdXJpa2Jzcy1NYWNCb29rLUFpci5sb2NhbAo="
# Caution: In production, follow https://developer.hashicorp.com/terraform/tutorials/configuration-language/sensitive-variables
# to protect the sensitive variable `ssh_private_key`
ssh_private_key = "LS0tLS1CRUdJTiBPUEVOU1NIIFBSSVZBVEUgS0VZLS0tLS0KYjNCbGJuTnphQzFyWlhrdGRqRUFBQUFBQkc1dmJtVUFBQUFFYm05dVpRQUFBQUFBQUFBQkFBQUFNd0FBQUF0emMyZ3RaVwpReU5UVXhPUUFBQUNDeXlvYjNVaE5qUXhTQ2NVcXpibFJHUVp2dGxuTXFjcGtNVHBXOG9sMnJ0Z0FBQUtqK1kvSFEvbVB4CjBBQUFBQXR6YzJndFpXUXlOVFV4T1FBQUFDQ3l5b2IzVWhOalF4U0NjVXF6YmxSR1FadnRsbk1xY3BrTVRwVzhvbDJydGcKQUFBRURtL1BzVCs2RWFyenRsbnNISGZScGhGK2h6RlVNRm1mQVFlMmtNemZxN21yTEtodmRTRTJOREZJSnhTck51VkVaQgptKzJXY3lweW1ReE9sYnlpWGF1MkFBQUFJbk4xY21sclluTkFVM1Z5YVd0aWMzTXRUV0ZqUW05dmF5MUJhWEl1Ykc5allXCndCQWdNPQotLS0tLUVORCBPUEVOU1NIIFBSSVZBVEUgS0VZLS0tLS0K"

# Default disk storage for the VMs. Uncomment the following line if needed
vm_os_disk_storage = "local-lvm"

# Bastion host details. This is required for the Terraform client to
# connect to the Kubespray VM that will be placed into the internet network
bastion_ssh_ip   = "192.168.1.131"
bastion_ssh_user = "ubuntu"
bastion_ssh_port = 22

# VM specifications
########################################################################
# Maximum cores that your Proxmox VE server can give to a VM
vm_max_vcpus = 2
# Control plane VM specifications
vm_k8s_control_plane = {
  node_count = 1
  vcpus      = 2
  memory     = 2048
  disk_size  = 20
}
# Worker nodes VM specifications
vm_k8s_worker = {
  node_count = 3
  vcpus      = 2
  memory     = 3072
  disk_size  = 20
}

# Kubernetes settings
########################################################################
kube_version               = "v1.29.5"
kube_network_plugin        = "calico"
enable_nodelocaldns        = false
podsecuritypolicy_enabled  = false
persistent_volumes_enabled = false
helm_enabled               = false
ingress_nginx_enabled      = false
argocd_enabled             = false
argocd_version             = "v2.11.4"
