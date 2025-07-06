variable "region" {
  default = "us-east-1"
}

variable "cluster_name" {
  default = "devops-eks-cluster"
}

variable "key_name" {
  description = "EC2 Key pair for SSH access"
  default     = "ahmed-ec2-key"
}

