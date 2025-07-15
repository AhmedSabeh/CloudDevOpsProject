variable "project_name" {
  default = "cloudDevopsProject"
}

variable "instance_count" {
  default = 2
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Name of the AWS key pair to use for SSH access"
  type        = string
  default     = "CloudDevopsProject"
}
