# Environment
########################################################################
env_name       = "xp"
location       = null
cluster_number = "hl"
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
ssh_public_keys = "c3NoLXJzYSBBQUFBQjNOemFDMXljMkVBQUFBREFRQUJBQUFDQVFDL0pFcjVVOUZDZmR4UDR5Ujh1VWN5NWJYNDVBeFI0M1pmMDlqb1R6NlpRekJJMElwQUJKdnNFV0puTzRRYUxDczRyWXVGTXRzYlV5VHJSLzN3TFFjUmpOV3FncjVTSnVhYnZFV2dkY1JpZjVkTVlPaVMvWmkxK25kN0lhRTh1c0xLZU5SbFRXMXdpOTJmWXVIQVJPaENreVp2MnVFNUJCUzFla1FYU3dtbU53a0c1SDljTXd1ZmthUmlacXd5WkJHL0dRUWxYdGZmQkp3ekp2REZDMEFQMUc1QUxNTTZXMTlubUM0S29iY0pOZUxTQWFnQVNobzdCMWRLcVhCNTBlYjltN2RWMWdWWU9pTWlLcFdaSTZqdkhuZG5iVWVwU3NmdDgrQVdTQ3FNN1lOeHc0OW00QlcwMUNYbEM0ZmFoRWFBWGdMTlNua0Evbll2MFZIS2JvYVFWVzlsQ2VkaUcwT01CWXZMajhveWpZbFhlQlFBQ1ZSWTQvYnQ2Q1hneE1MT2dkMjU2RWtWZFordEgwSEUyYWhodUtLd1h3V1QrTDRZWklCM3hZSU9ZKzI4K0Q0eHM4OXBQNXZQVUR1TDU1ZC9pQyt5R0t4VVFxQUZLY3ZRU3Y1ZUcyQjNaVHVncEt4MUVidXB5QnR0cHY3M0tiTzlaaS9hTnd5NTNkeFh1R3ZxUGsxVFpxM1E5Q0c0QXBjVFVFcDFhMFo5eHlXQ2t6eXdPT2I2M1ZMZnh4WHZRdW1YamZiejNQb2lsbjh6a004ZnVZTDBJc2lvWjh2WHFxcS93NDRVMTdhbWJ6dmtKN0JpVVZyWk1YOVBldFlEQWhOL2hHbDcwUmJnaUF2d0UxMVFFcnV3TmRYQ3FHM1RCUlYwR2NFL1pUM3hOaWtvam9VcFAwSUNaZ01tMlE9PSBrOHMtYWRtaW5Ac3VyaWticy5sb2NhbAo="
# Caution: In production, follow https://developer.hashicorp.com/terraform/tutorials/configuration-language/sensitive-variables
# to protect the sensitive variable `ssh_private_key`
ssh_private_key = "LS0tLS1CRUdJTiBPUEVOU1NIIFBSSVZBVEUgS0VZLS0tLS0KYjNCbGJuTnphQzFyWlhrdGRqRUFBQUFBQkc1dmJtVUFBQUFFYm05dVpRQUFBQUFBQUFBQkFBQUNGd0FBQUFkemMyZ3RjbgpOaEFBQUFBd0VBQVFBQUFnRUF2eVJLK1ZQUlFuM2NUK01rZkxsSE11VzErT1FNVWVOMlg5UFk2RTgrbVVNd1NOQ0tRQVNiCjdCRmlaenVFR2l3ck9LMkxoVExiRzFNazYwZjk4QzBIRVl6VnFvSytVaWJtbTd4Rm9IWEVZbitYVEdEb2t2Mll0ZnAzZXkKR2hQTHJDeW5qVVpVMXRjSXZkbjJMaHdFVG9RcE1tYjlyaE9RUVV0WHBFRjBzSnBqY0pCdVIvWERNTG41R2tZbWFzTW1RUgp2eGtFSlY3WDN3U2NNeWJ3eFF0QUQ5UnVRQ3pET2x0Zlo1Z3VDcUczQ1RYaTBnR29BRW9hT3dkWFNxbHdlZEhtL1p1M1ZkCllGV0RvaklpcVZtU09vN3g1M1oyMUhxVXJIN2ZQZ0ZrZ3FqTzJEY2NPUFp1QVZ0TlFsNVF1SDJvUkdnRjRDelVwNUFQNTIKTDlGUnltNkdrRlZ2WlFubllodERqQVdMeTQvS01vMkpWM2dVQUFsVVdPUDI3ZWdsNE1UQ3pvSGR1ZWhKRlhXZnJSOUJ4Tgptb1liaWlzRjhGay9pK0dHU0FkOFdDRG1QdHZQZytNYlBQYVQrYnoxQTdpK2VYZjRndnNoaXNWRUtnQlNuTDBFcitYaHRnCmQyVTdvS1NzZFJHN3FjZ2JiYWIrOXltenZXWXYyamNNdWQzY1Y3aHI2ajVOVTJhdDBQUWh1QUtYRTFCS2RXdEdmY2NsZ3AKTThzRGptK3QxUzM4Y1Y3MExwbDQzMjg5ejZJcFovTTVEUEg3bUM5Q0xJcUdmTDE2cXF2OE9PRk5lMnBtODc1Q2V3WWxGYQoyVEYvVDNyV0F3SVRmNFJwZTlFVzRJZ0w4Qk5kVUJLN3NEWFZ3cWh0MHdVVmRCbkJQMlU5OFRZcEtJNkZLVDlDQW1ZREp0CmtBQUFkUXZVb3Z5NzFLTDhzQUFBQUhjM05vTFhKellRQUFBZ0VBdnlSSytWUFJRbjNjVCtNa2ZMbEhNdVcxK09RTVVlTjIKWDlQWTZFOCttVU13U05DS1FBU2I3QkZpWnp1RUdpd3JPSzJMaFRMYkcxTWs2MGY5OEMwSEVZelZxb0srVWlibW03eEZvSApYRVluK1hUR0Rva3YyWXRmcDNleUdoUExyQ3lualVaVTF0Y0l2ZG4yTGh3RVRvUXBNbWI5cmhPUVFVdFhwRUYwc0pwamNKCkJ1Ui9YRE1MbjVHa1ltYXNNbVFSdnhrRUpWN1gzd1NjTXlid3hRdEFEOVJ1UUN6RE9sdGZaNWd1Q3FHM0NUWGkwZ0dvQUUKb2FPd2RYU3Fsd2VkSG0vWnUzVmRZRldEb2pJaXFWbVNPbzd4NTNaMjFIcVVySDdmUGdGa2dxak8yRGNjT1BadUFWdE5RbAo1UXVIMm9SR2dGNEN6VXA1QVA1Mkw5RlJ5bTZHa0ZWdlpRbm5ZaHREakFXTHk0L0tNbzJKVjNnVUFBbFVXT1AyN2VnbDRNClRDem9IZHVlaEpGWFdmclI5QnhObW9ZYmlpc0Y4RmsvaStHR1NBZDhXQ0RtUHR2UGcrTWJQUGFUK2J6MUE3aStlWGY0Z3YKc2hpc1ZFS2dCU25MMEVyK1hodGdkMlU3b0tTc2RSRzdxY2diYmFiKzl5bXp2V1l2MmpjTXVkM2NWN2hyNmo1TlUyYXQwUApRaHVBS1hFMUJLZFd0R2ZjY2xncE04c0RqbSt0MVMzOGNWNzBMcGw0MzI4OXo2SXBaL001RFBIN21DOUNMSXFHZkwxNnFxCnY4T09GTmUycG04NzVDZXdZbEZhMlRGL1QzcldBd0lUZjRScGU5RVc0SWdMOEJOZFVCSzdzRFhWd3FodDB3VVZkQm5CUDIKVTk4VFlwS0k2RktUOUNBbVlESnRrQUFBQURBUUFCQUFBQ0FRQ0hka01rUEVDN3JOTXNVc0FUSElQWEVIRk11T0g2VHdnZgpsZFhObmd1eE5xckxqKy9LdXZsOTdqd2RDVkx2OFltWUczWWJxaFVhWW14eHlvMnZYMW41R0NSOU9UZUVwVWtkNmVvMmRBCkFBQm9qRmVwQ1pTOXlrYTZPdHdnR3hObkxDWjZ1dk41WnVBdEhJR1o0QVUxVi9pU1hlYy9MV0k0eEJxU3NFand1Qm50Tm8KN1J0TnptZFlhVEZsQTNyYUk0MW9MMlIrejU2UjBZU1p3K2t5M0d4RVM3cnZCRW8vMjIzYnowQWlETVhaWXpVaXZFWENIcwpKRVAwbWdBa0ZTTkc1T0ljTm1zODBKMy9ueVJ0Zkt0amtOYmp3Vk1wOXMzVENmOVF4RS9sUVptR0psaDhEam1jQUliYW1GCmtBeHgwdmpjRk1STGxaSDRJRjdHT01TTWdKUWdFR0N4UXc1MVU0RzRZY2hjU3NtYWx2enczSmpQUS9CUk1WMEdUNytSS28KZ1U2Sjh0dGx1NVNrL2JwdDZjMWhWUzFxTzgyeFYycmYydjc2RytaR1BEVU1PMEkvM093dE1Gci90VDR5T2dCOFBIYjA0UAp0NTFjeHFTcEtxT21nSTNCcTlTYnJYVmhQNWQvN0JjSmh4OGxlNWk3LzFjQkovZ2ozek9yNDRzRWtiNktSQjRvVk9OeVJlCityQTltZjVqcFUxcU5UdmdvWHdNZkR1cW04eklabGdUNjEwa2cwby9ZQlh4QWViMWh6V2Y5a1U2aW15TmIvOG9TZTExMVkKcDdPa01oVzNaYjBFMDZnOG5rcmxtRmhTWXRjdjhEWlJPV2MrY3ZZcDEvMFFnUHljeXNLNkRqZGt6eE40MGtSbEllSzNtcgo5TkY4dUVJbjZYczBjQmNjRW1lUUFBQVFFQXpoUVhaR0k4N3V1VDNZenlRclltaTZyMGxxMG5GdXo4NVEwQ1lyUVlVb0txCm9iS1RDNVZQaU5nSmNQM09yYnBpZTdBOG44eTBzZ0Y3V2FVb211cnd5WFVobVVTd09MT1F2OHh6TlFoT2pBSzR1T2hPMmQKZ1pNVThxU3BUellkdm9xVVpNdVlEUHdQeEcwRnVvVDF6Y1Ryd0JmditLT3llUEVrdGdwQVZsZGhJdFUwZ0hETTFGZVlKSwpTMG5iVktzNkxYWnBVWWhFdlhEQXd4d0dTK3VVdDRTZlY1UTRnNUhNR1JuT0hkUjZhenN5TUFtRVhGTjFrR2R5WGNNM0xSCjNzVFJaT2tRaHZSSnFhMEJZa0NxZDJJVjkvcGpQOG9nNlFVT3llV012R09YcWRMbFFXNk1LWkJueHVOVEZ5bG93K2JFejcKbWxzOHc4L0JSOThQRC9GNVlBQUFBUUVBNkZoUzNOK0t5dHJTTk9WVk5BSzBCVkl3T2xaVmhhRjJFL3RBdW9Mc3hjcHNhcwoyMWhxRTU3WGhCbGhmNlJkdGpXT1Jtc25KRGdEc2lCM21kb2NaRGVBbmJqNkJzRk1ndEhzd0FDN0I5SWhMVFFxelBOVXRoClQ1WjNkNkt0azI3eDdJSDRkNktOTlRKYlRYeFh2RHZwbDRQQ1RmU1lydEZVZUhmRDFpRXUxQjRPakZBcXpHQkYvYjczbE4KVW90ZUhkOVBvQm5HOTZwN2F5T3pKcHhOTG91OWMxaDZzRUFpKysvT3VQbWY3emZBTm1LNGczZjRFWWx5bGx2N1hBOGlRYQpqcUtKNlo2Nm1JNnBQdmVEY3grTTZYa0FIVGJjNlRrdmowb1kwbE5SMXYzNHJvTXg0N04zZkJ6NjRUZjNtL01oUzYzdGUxCnJHZTdKQ3JtWVc4bjhsbXdBQUFRRUEwcG9Uc0FERjJsejBDMUJCK3JJR0dMUXBSYVdHZHByblRRQUNzZHFOQmovNzlzajkKa2t0eTg0R01nTlAycXZBMWRYcUVpK0M1R1NxMVM0dVFoZ2VkUWt4VnI5RldBK2Z2cWN1K0g2REVoUytUVkl6WWo1Zi9uWQpxdk9QRHhPRnVublFQVEEvS3BFeWxkNThzRFdTMTF4K2QxdzhEK0hoR0x1OTlpMWtaQkd6cDN1dVRDMFFacGxpYURnK1o0CnpzMWZ4dHVsVlJDQW5MSldUR0lsaVpWN21xa0g0Z2xDNkdUOWgvV2hjUEFhUENLQUhiaWdUSTcwL2VlNGRTV3loS3FXV1AKRWk4NkJ1NTVGZU02WVZTd2o2aEZqTHg0OVJydy9CMVVmYWlZaWtFU2RvdVZZUXJPVFh1MXNibUR2d2ZhRXRaMHV4QTVHKwpMN0RGU1ZXWC82MUdtd0FBQUJkck9ITXRZV1J0YVc1QWMzVnlhV3RpY3k1c2IyTmhiQUVDCi0tLS0tRU5EIE9QRU5TU0ggUFJJVkFURSBLRVktLS0tLQo="

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
  disk_size  = 30
}
# Worker nodes VM specifications
vm_k8s_worker = {
  node_count = 3
  vcpus      = 2
  memory     = 2048
  disk_size  = 30
}

# Kubernetes settings
########################################################################
kube_version               = "v1.29.5"
kube_network_plugin        = "calico"
enable_nodelocaldns        = false
podsecuritypolicy_enabled  = false
persistent_volumes_enabled = false
helm_enabled               = true
ingress_nginx_enabled      = false
argocd_enabled             = false
argocd_version             = "v2.11.4"
