resource "aws_instance" "app_instances" {
  count         = 2
  ami           = "ami-0c7217cdde317cfec" 
  instance_type = "t3.micro"
  subnet_id     = module.vpc.public_subnet_ids[count.index]
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  key_name      = var.key_name

  tags = {
    Name = "AppInstance-${count.index}"
  }
}

resource "aws_security_group" "ec2_sg" {
  name        = "ec2-sg"
  description = "Allow SSH and HTTP"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

