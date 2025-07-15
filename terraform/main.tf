module "vpc" {
  source = "./modules/vpc"
  project_name = var.project_name
}

module "ec2" {
  source = "./modules/ec2"
  instance_count = var.instance_count
  instance_type  = var.instance_type
  subnet_id      = module.vpc.public_subnet_id
  security_group_id = module.vpc.security_group_id
  key_name          = var.key_name
}

module "cloudwatch" {
  source = "./modules/cloudwatch"
}

