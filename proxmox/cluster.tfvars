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
pm_api_url          = "https://192.168.1.11:8006/api2/json"
pm_api_token_id     = "surikbs@pam!surikbs"
pm_api_token_secret = "60c35fda-87ac-40e2-be20-0b2cfba8e5ef"
pm_tls_insecure     = true
pm_host             = "surikbs"
pm_parallel         = 2
pm_timeout          = 600


# Common infrastructure configurations
########################################################################
# Kubernetes internal network
internal_net_name = "vmbr1"
# Internal network CIDR
internal_net_subnet_cidr = "10.0.1.0/24"
# Base64 encoded keys for Kubernetes admin authentication
ssh_public_keys = "c3NoLXJzYSBBQUFBQjNOemFDMXljMkVBQUFBREFRQUJBQUFDQVFETW5DcVRrV0xvMEFrRnhUamg2dCt5ZHJKUlY1Y3V4M3ZOOU9tZkFVL0VESk94aVpRdXp1NTZjK3pYOFdCa0F4ZnVYemREcjRHeSt4dW9BMlIycWV2N3B6OGJISHRXRHFvK1kzS3c4eWs1cVBVNDV5M3lkcTQ2d0hWZ1VvblRteEZXdEtjeS9sbmEyekZmcGlIbG95SFhpRmN6ekR1aG1YQkMrYzZ1UERzbHQwT0FKLzZHZkFnV3hlS0ppbDVMV05RUHRUWFBheXV0OC9sS0FRa3pPS2N5VEFEdEVPNm5NY3VabGluUThpT2VVWUFKb2VUUXFpOGJRbUtHdUt4cGFVaWpvMUNZSjh5TlU3V0VWcWN1RkNDNXRsTWxuSlRpSW96OUlsWTZsd3FySkFab1JYbVF2OU1iNzlvRGRVOFZ4TDdwYzd5L3lFaEorQ0w2REtCaHl6b1lZOTVEVnhkRmJSTzFqQUtFMmNqNjhnbjh3Ykt2WUpJRmdmS0NnS3BIejJMMVdXTElveFBncW54dXVFcTNjZk1pWkQ4eWV0bzRCUWdpUjN5MlFpdkljK3ZzYjRLRGZLVjJWZFN4OHRtQ255R0EzV25ibEREa2VJWHVnWjQ4bkxMOTgvZHlJQjk3YWJoS1ltSGUvbDFXbG5IdVRkQ0tYb2lGSWVXRG5uVWlHMWxnV09vMGhVRDZMRjdsYlYxTFJuRjB5QkVrZU1uZUtPYmUrcGpNa0krNVdkRXdVQ2FCRFFtdHJqaGkxTytHOW1zV2FjZ3RxYXdSb3A0R0g1WDB1ZmlEYVdDZkh2UXFXemFZRzg3eFlqclp5YWpkVHlPZklhM3Y4a2kweE5YbUtXV0F3VytiWFJJb0lnNTk0bnhEelpBNlpHaXJITFhEekcvMzFFSnA1VUNrSVE9PSBrOHMtYWRtaW5Ac3VyaWticy5sb2NhbAo="
# Caution: In production, follow https://developer.hashicorp.com/terraform/tutorials/configuration-language/sensitive-variables
# to protect the sensitive variable `ssh_private_key`
ssh_private_key = "LS0tLS1CRUdJTiBPUEVOU1NIIFBSSVZBVEUgS0VZLS0tLS0KYjNCbGJuTnphQzFyWlhrdGRqRUFBQUFBQkc1dmJtVUFBQUFFYm05dVpRQUFBQUFBQUFBQkFBQUNGd0FBQUFkemMyZ3RjbgpOaEFBQUFBd0VBQVFBQUFnRUF6SndxazVGaTZOQUpCY1U0NGVyZnNuYXlVVmVYTHNkN3pmVHBud0ZQeEF5VHNZbVVMczd1CmVuUHMxL0ZnWkFNWDdsODNRNitCc3ZzYnFBTmtkcW5yKzZjL0d4eDdWZzZxUG1OeXNQTXBPYWoxT09jdDhuYXVPc0IxWUYKS0owNXNSVnJTbk12NVoydHN4WDZZaDVhTWgxNGhYTTh3N29abHdRdm5Pcmp3N0piZERnQ2YraG53SUZzWGlpWXBlUzFqVQpEN1UxejJzcnJmUDVTZ0VKTXppbk1rd0E3UkR1cHpITG1aWXAwUElqbmxHQUNhSGswS292RzBKaWhyaXNhV2xJbzZOUW1DCmZNalZPMWhGYW5MaFFndWJaVEpaeVU0aUtNL1NKV09wY0txeVFHYUVWNWtML1RHKy9hQTNWUEZjUys2WE84djhoSVNmZ2kKK2d5Z1ljczZHR1BlUTFjWFJXMFR0WXdDaE5uSSt2SUovTUd5cjJDU0JZSHlnb0NxUjg5aTlWbGl5S01UNEtwOGJyaEt0MwpIekltUS9NbnJhT0FVSUlrZDh0a0lyeUhQcjdHK0NnM3lsZGxYVXNmTFpncDhoZ04xcDI1UXc1SGlGN29HZVBKeXkvZlAzCmNpQWZlMm00U21KaDN2NWRWcFp4N2szUWlsNkloU0hsZzU1MUlodFpZRmpxTklWQStpeGU1VzFkUzBaeGRNZ1JKSGpKM2kKam0zdnFZekpDUHVWblJNRkFtZ1EwSnJhNDRZdFR2aHZackZtbklMYW1zRWFLZUJoK1Y5TG40ZzJsZ254NzBLbHMybUJ2Two4V0k2MmNtbzNVOGpueUd0Ny9KSXRNVFY1aWxsZ01Gdm0xMFNLQ0lPZmVKOFE4MlFPbVJvcXh5MXc4eHY5OVJDYWVWQXBDCkVBQUFkUUtJcUt1eWlLaXJzQUFBQUhjM05vTFhKellRQUFBZ0VBekp3cWs1Rmk2TkFKQmNVNDRlcmZzbmF5VVZlWExzZDcKemZUcG53RlB4QXlUc1ltVUxzN3VlblBzMS9GZ1pBTVg3bDgzUTYrQnN2c2JxQU5rZHFucis2Yy9HeHg3Vmc2cVBtTnlzUApNcE9hajFPT2N0OG5hdU9zQjFZRktKMDVzUlZyU25NdjVaMnRzeFg2WWg1YU1oMTRoWE04dzdvWmx3UXZuT3JqdzdKYmRECmdDZitobndJRnNYaWlZcGVTMWpVRDdVMXoyc3JyZlA1U2dFSk16aW5Na3dBN1JEdXB6SExtWllwMFBJam5sR0FDYUhrMEsKb3ZHMEppaHJpc2FXbElvNk5RbUNmTWpWTzFoRmFuTGhRZ3ViWlRKWnlVNGlLTS9TSldPcGNLcXlRR2FFVjVrTC9URysvYQpBM1ZQRmNTKzZYTzh2OGhJU2ZnaStneWdZY3M2R0dQZVExY1hSVzBUdFl3Q2hObkkrdklKL01HeXIyQ1NCWUh5Z29DcVI4CjlpOVZsaXlLTVQ0S3A4YnJoS3QzSHpJbVEvTW5yYU9BVUlJa2Q4dGtJcnlIUHI3RytDZzN5bGRsWFVzZkxaZ3A4aGdOMXAKMjVRdzVIaUY3b0dlUEp5eS9mUDNjaUFmZTJtNFNtSmgzdjVkVnBaeDdrM1FpbDZJaFNIbGc1NTFJaHRaWUZqcU5JVkEraQp4ZTVXMWRTMFp4ZE1nUkpIakozaWptM3ZxWXpKQ1B1Vm5STUZBbWdRMEpyYTQ0WXRUdmh2WnJGbW5JTGFtc0VhS2VCaCtWCjlMbjRnMmxnbng3MEtsczJtQnZPOFdJNjJjbW8zVThqbnlHdDcvSkl0TVRWNWlsbGdNRnZtMTBTS0NJT2ZlSjhRODJRT20KUm9xeHkxdzh4djk5UkNhZVZBcENFQUFBQURBUUFCQUFBQ0FBUmFKZ1d4aC9zUHdjRmZxcEFUb09KNDU5NFhFTjRyM0JSTAphMVM0Z0d2WklLTWNIQXpLMWdQQXgzN29ZWFovSWxrdHFVMUZSR3I4TUdCb2doQ01HTHJubWM0SDB3L0hqQk43cGdyaGdUClQ2eFF5S3prMWovTnkvRDBBWFFWdEE1eU9EQUROemVaSFFLOEt2RS9XQWZNM0sxcUFCYmh0SDJqMXlkdFQ1N3dBa1g4a3cKRUpmbnQzeFVoVGNMdkdtNTMvamRqK0Z6bENCRkdqNWF1MGxkb1NET3dRNUoxK215ZzNRbTM0alVQYkcyWmhUT1hzR1pmUgpzRlZIY3RJbTJ6a1puNWRWTm5OVkNrUVM0cGNiRG5PTEw2ajlZeStHKys4R1RLQUMrSzJ1MDgvTzNtM0drWnkzSENyazU0CmhsQWVPVGxaL3QvTmNNd3gvUHg0bkVpNE8rb1RJZUsvNzlNNkE3eEN5NGhTYjRSYVR3Q0lKNFpSVEY4TWVzSWJMSC9Mb2UKNkg1QVFYSDRPOU9vSGtiaXM2U3RRM0F0b3pGSkkwdFpJalJEaXVrZTZ2VHgyajdaTTBzYmFRRFBNb3o2cW5lMGVMRnBsNgpKQ0F6UndxdFRwbWk0SGUwVUdMMHdRRHZxRHhITGRPSDV6cjJyaDJ2RmcyZ0VrT1VUQXI2dlBkeVBQMXV5bWgvS2wzUUU3CnVLZnQ2R3pMVEVldjRjQVpieUI4U2RaTTdZcnhsMEJFUWo3UHJWY213SkVrMmFQZ2c2NEs3WkhyVzNUT0M4K2hoTGFVSjEKWjNPbnJaemdONjdPNHQzUzZHTFcyMWpnczErN3Y2Qm02UVpQRGdVNUFCd1VUVUh3L3pCQ1czWEN3dkk0b1BrazNuZzN1eQpUWFFsdVJZVkF3RXpTbkRyaGhBQUFCQURRcHN1MGZyVkE2ZGRnRkh0dDhZaGYvaHhpWVdIblk4T3hvckdnT3h4VkZFQXdWClhDRnUrZzZvaHhsTE9xUzFvL0ZycWFwdGYyb1plb0VmS1ZQNzBrTG9RQ1VTdDVRRm9kUU4zL3lPTnYwK0llY1Y4TFVxejcKNXA4Q3NuYWt3bnpjRTViREdkcW1HSm9HWGJXRnMvZjdjRDM1bnI2ZXYxbGQ1RjgyN3VncDV3VTA1SnlPWFc3YURNNWIxQgpuaFJYamNrMTk4WndiYTloSXBYV3BKSnJVWmprTGsweDJ1d1RZalNISURlaUZLcDdPTEhNMU1XTXJ4blF1bWVjSmJDdWNQCnFsZUZxR3dsQWRhMWgvQzRsREQ4UHhBNXlvSEhNWWJHZDNLTVFiR0lIekoxVkN2b2xweWoxSDhPeFMra21HRnN6Z1V4NGcKeW5JM2lDb2tJL2U4TTJNQUFBRUJBUGNnbE53cUxZVFpEVlNQYlF0N2FIRmFCUm80ajdON3NUQlVNUy9CSlN2YWhZZTJ6TQpubmY0RUJ1TzZJTlo1cEJUL3FXYmZZbDNYZGZkaGNlaEhvZjdQWmg1VU5qQzAxdU1LbkFVN2o4QURZSzFvYnJ5azJSRTlGCkt3OXJBOWRid0piNEUwOUV6RHNScGNYSXNhTWFpYnpDb1IvRWk0ekJCZ0pmSXFYUVJDczdGLzRrRTJvaE4ycUZIWjc1ckEKNW1RQk1VeUVFcW50d3lPaXpWeW1GcUhZeUpYZ1F0ZW96TGpnUC92VFNBUjlkMHpTMXdkRXFxbCtrY2tIdjFKOEtHeVRhRgo1Z0R6N0tDUnMvVmJFWmVXUUJIN3RhU0NTVE9XVUtJV1hrZUNZSUdCdjJ2cjFsRlZqdndpSnJ2MExBY1FTWjRyc0VMRjZDCngxbmFTNGZBdW1LNFVBQUFFQkFOUDB5K1ZWanBJYll4R29KUWk3UHlrR0lEWDVmSEx0M1NsQWpUSlFpRnArSDJwZEJUQkwKRXNzS2V6ZVJXbkVZaDFGUDJZSTQyZjBHM0J1dmZLK1pYZE0xSEt4U21ab3h6aVZ5NHFLMHFTM29qSW5qN0YrcWZucnVJYwpaeEhzb1lzYVp3UXc5TTk4aXlhSHZqK1VCUElQbk8wa2pvUE41SmxMQ3NWNlZIaXJXanF6SUl2VWdrV3htM1UxVjUxcjJDCnAzTkpBK0ozWjhWcG1UUlhXVk1tcjI0MFU0d0s0ZytmTHRFWGQ1MlFOejJsaUhJTVJzWjQxazdXemVFTUVxRWwzeFpYSWQKTld1NXEvOEszeGlJUVc0RHBpaEFSZHVobm5wcVQ2MDR3ajhaQWpRRjU5UzQ2Sy9oeWNkVmloZWp6V2E4ZDFFZXFjc3Vkdgo5c05NMDF0ZkV1MEFBQUFYYXpoekxXRmtiV2x1UUhOMWNtbHJZbk11Ykc5allXd0JBZ01FCi0tLS0tRU5EIE9QRU5TU0ggUFJJVkFURSBLRVktLS0tLQo="

# Default disk storage for the VMs. Uncomment the following line if needed
vm_os_disk_storage = "local-lvm"

# Bastion host details. This is required for the Terraform client to
# connect to the Kubespray VM that will be placed into the internet network
bastion_ssh_ip   = "192.168.1.131"
bastion_ssh_user = "surikbs"
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
