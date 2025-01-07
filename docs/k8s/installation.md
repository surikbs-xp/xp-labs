## Building Your Kubernetes Cluster
Get ready for the most exciting part—creating your very own Kubernetes cluster!

### Plan Overview
Here’s a step-by-step breakdown of the process using Terraform and Kubespray:

- Set Up VMs: The VM's are already created with the previous step.
- Install Kubespray: Set up an additional VM and install Kubespray on it.
- Customize the Cluster:
  The Kubespray configuration files to match your needs:
    - `inventory.ini`
    - `addons.yaml`
    - `k8s-cluster.yaml`

### Deploy Kubernetes Nodes:

Use Kubespray to transform the initial VMs into fully operational Kubernetes nodes.
Don’t worry if this seems overwhelming! The [xp-labs](https://github.com/surikbs-xp/xp-labs/tree/main/proxmox) repository includes pre-configured Terraform files to simplify the entire process.

- Here’s the simplified Steps:
  - Clone the repository.
  - Customize the Terraform variables for your setup.
  - Run a few Terraform commands.

Relax and enjoy your coffee while the setup completes.
Ready? Let’s get started!
