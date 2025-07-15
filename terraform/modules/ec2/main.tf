variable "instance_count" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "security_group_id" {}

resource "aws_instance" "app" {
  count         = var.instance_count
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 free-tier
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name               = var.key_name

  tags = {
    Name = "DevOpsInstance-${count.index}"
  }
}

output "public_ips" {
  value = aws_instance.app[*].public_ip
}

