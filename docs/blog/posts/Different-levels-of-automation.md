---
date: 2024-12-28
description: >
  Different levels of Automation
categories:
  - Automation
---
# Automization

## Evolution of Operations: From ClickOps to IDP

- [Level 0: ClickOps]()
- [Level 1: Scripting]()
- [Level 2: IaC, CaC]()
- [Level 3: IaC + Pipelines]()
- [Level 4: Modules + Charts]()
- [Level 5: IDP + Portals]()

` Level 0: Clickops`
: ClickOps refers to manually managing cloud infrastructure through a web interface, like AWS Console or Azure Portal. While intuitive for quick tasks or beginners, it is error-prone, hard to replicate, and lacks version control.

` Level 1: Scripting: Bash, Python or PowerShell`
: This involves using Bash, Python, or PowerShell to automate tasks. It's faster and less error-prone than manual clicks but lacks standardization, scalability, and state tracking. It’s often a stepping stone to more robust automation like IaC.

` Level 2: Infrastructure as Code and Configuration as Code`
: In my view, the next step beyond scripting is leveraging tools like Terraform for infrastructure provisioning and Ansible for configuration management.

` Level 3: Pipelines: IaC + CI/CD or Operators with CRDs`
: IaC would be executed through a pipeline instead of locally on the client device, automating the provisioning of the necessary resources.

` Level 4: Terraform Modules, Helm Charts and GitOps`
: As you professionalize, recurring infrastructure components can be packaged into Terraform modules to provision resources like a Kubernetes cluster. From there, a GitOps approach can be used to deliver infrastructure as code directly to the clusters, achieving a high level of automation.

` Level 5: Replace Human with Portal`
: The next level would involve replacing the human element at Level 4 with an abstraction layer. However, this doesn't mean platform teams are eliminated; someone still needs to create the Terraform modules, Helm charts, pipelines, and other components, which can then be deployed using a template.

## The Correlation

`Level 0–1`
: Primarily imperative approaches, with no containerization or orchestration.

`Level 2–3`
: Transition between imperative and declarative, with initial steps toward containerization and API integration.

`Level 4–5`
: Strong focus on declarative approaches, extensive use of containerization, orchestration, and API-driven environments, along with package management.
