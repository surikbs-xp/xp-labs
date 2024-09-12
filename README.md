# xp-labs


This repository provides a guide and necessary configurations to set up a local environment using Proxmox, with the goal of building a Kubernetes platform. It includes steps to create a cluster, set up storage, and install Kubernetes using virtual machines managed by Proxmox.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Proxmox Installation](#proxmox-installation)
- [Virtual Machine Setup](#virtual-machine-setup)

## Prerequisites

Before you start, ensure you have the following:

- A machine to run Proxmox (with at least 16GB of RAM and a multi-core processor)
- Access to the Proxmox ISO image ([Proxmox Download Page](https://www.proxmox.com/en/downloads))
- Basic understanding of virtualization and Kubernetes
- A stable internet connection

## Proxmox Installation

1. **Download and Install Proxmox**:
   - Download the latest ISO from [Proxmox's website](https://www.proxmox.com/en/downloads).
   - Follow the [official guide](https://pve.proxmox.com/wiki/Installation) for installation instructions.

2. **Access the Proxmox Web UI**:
   - Once installed, access the Proxmox web interface at `https://<your-proxmox-ip>:8006`.

3. **Set up Storage for Virtual Machines**:
   - Navigate to the "Datacenter" -> "Storage" section to configure storage for your virtual machines.
