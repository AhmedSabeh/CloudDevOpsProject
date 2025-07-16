locals {
  instance_names = ["Jenkins-Server", "SonarQube-Server"]
  instance_roles = ["jenkins", "sonarqube"]
}

resource "aws_instance" "app" {
  count                  = var.instance_count
  ami                    = "ami-0c02fb55956c7d316"
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name               = var.key_name

  tags = {
    Name = local.instance_names[count.index]
    Role = local.instance_roles[count.index]
  }
}

output "public_ips" {
  value = aws_instance.app[*].public_ip
}

