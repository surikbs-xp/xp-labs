# Introduction

This Document helps us to create production like kubernetes cluster for learning and testing purposes with the help of Proxmox, Terraform and kubespray.

## Network setup

This is the network diagram.

## System Requirement
To begin the deployment on Proxmox VE, we will have to configure the following components

- [Internal network](Configuring-Internal-Network)
- VM template
- SSH key pair
- Bastion host

### Configuring Internal Network

It’s important to set up an internal network beforehand. Rather than connecting Kubernetes nodes to the default Proxmox VE bridge, `vmbr0`, it’s recommended to place them in a dedicated internal network.

- Create `vmbr1` on the pve cluster/node. Open the `/etc/network/interfaces` file in a text editor and append the below configuration for the new network `vmbr1.`

    ```
    # /etc/network/interfaces
    ...
    ...
    # Dedicated internal network for Kubernetes cluster
    auto vmbr1
    iface vmbr1 inet static
        address  10.0.1.1/24
        bridge-ports none
        bridge-stp off
        bridge-fd 0

        post-up   echo 1 > /proc/sys/net/ipv4/ip_forward
        post-up   iptables -t nat -A POSTROUTING -s '10.0.1.0/24' -o vmbr0 -j MASQUERADE
        post-down iptables -t nat -D POSTROUTING -s '10.0.1.0/24' -o vmbr0 -j MASQUERADE
    ```

- Reload the config :
    ```
    ifreload -a
    ```

### Creating VM Template

- Start a new shell session on your Proxmox VE server and Run the following command to create the VM template:

    ```
     sh create-vm-template.sh
    ```

### Generating SSH key-Pair

User authentication is a critical aspect to address. Instead of using passwords for VM login, we will set up SSH-based authentication. This approach improves network security and removes the hassle of remembering yet another password.

- Create a directory to store the key pair.
  ```
  mkdir -p ~/proxmox-kubernetes/ssh-keys
  ```
- Generate an SSH key pair and save it to the specified directory.
  ```
  ssh-keygen -t rsa -b 4096 -f ~/proxmox-kubernetes/ssh-keys/id_rsa -C "k8s-admin@surikbs.local"
  ```

### Setting up Bastion Host

The bastion host is a typical VM connected to both the LAN and internal networks. Here’s a step-by-step guide to provisioning it:

  ```
  # Create new vm from the template
  qm clone 9000 9001 --name bastion --full true

  # Configure SSH keys for bastion user authentication.
  qm set 9001 --sshkey ~/proxmox-kubernetes/ssh-keys/id_rsa.pub

  # Connect the bastion VM to the LAN network by configuring the appropriate IP and gateway settings. Replace 192.168.1.131 with your chosen IP address.
  qm set 9001 --net0 virtio,bridge=vmbr0 --ipconfig0 ip=192.168.1.131/24,gw=192.168.1.1

  # Connect the bastion VM to the Kubernetes internal network bridge vmbr1
  qm set 9001 --net1 virtio,bridge=vmbr1 --ipconfig1 ip=10.0.1.2/24,gw=10.0.1.1

  # Configure the bastion VM to start at boot
  qm set 9001 --onboot 1

  # Start the bastion VM.
  qm start 9001
  ```
