# 🚀 CloudDevOpsProject

This project is a full end-to-end **Cloud DevOps pipeline** that demonstrates how to build, containerize, provision, deploy, and continuously deliver a cloud-native application using modern DevOps tools on **AWS**.

---

## 📚 Project Overview

### 💡 Objective:
Automate the deployment of a Java application using:
- Docker & Amazon ECR
- Kubernetes on AWS EKS
- Infrastructure-as-Code (Terraform)
- Configuration Management (Ansible)
- Continuous Integration (Jenkins)
- Continuous Deployment (ArgoCD)

---

## 📦 Tech Stack

| Area                        | Tools Used                                  |
|----------------------------|----------------------------------------------|
| Version Control            | Git, GitHub                                  |
| Containerization           | Docker, Amazon ECR                           |
| Container Orchestration    | Kubernetes, Amazon EKS                       |
| Infrastructure Provisioning| Terraform (with modules, S3 backend)         |
| Configuration Management   | Ansible (Dynamic Inventory, Roles)           |
| CI/CD                      | Jenkins (CI), ArgoCD (CD), SonarQube (Code Quality) |
| Monitoring                 | AWS CloudWatch                               |

---

## 📁 Project Structure

```bash
CloudDevOpsProject/
├── Dockerfile                      # App container build
├── Jenkinsfile                     # CI pipeline definition
├── deployment/                     # Kubernetes manifests (EKS)
│   ├── deployment.yaml
│   ├── service.yaml
│   └── ingress.yaml
├── terraform/                      # Infra-as-code to create VPC, EKS, EC2
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── modules/
├── ansible/                        # EC2 provisioning
│   ├── playbook.yml
│   ├── inventory/
│   └── roles/
├── argocd/                         # ArgoCD app config
│   └── application.yaml
├── docs/                           # Setup guides & architecture
│   ├── eks-setup.md
│   ├── docker-ecr.md
│   ├── jenkins-ci.md
│   ├── argocd-cd.md
│   ├── troubleshooting.md
│   └── architecture-diagram.png
└── README.md
