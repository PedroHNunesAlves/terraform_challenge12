module "vpc" {
  source              = "./modules/VPC"
  availability-zone   = var.availability-zone
  subnet-private-CIDR = var.cidr-block-subnet1
  subnet-public-CIDR  = var.cidr-block-subnet2
  vpc-CIDR            = var.cidr-block-vpc
}

module "security_group" {
  source = "./modules/SecurityGroups"
  vpc_id = module.vpc.vpc_id
}

module "ec2-instance" {
  source            = "./modules/EC2"
  security_group_id = module.security_group.security_group_id
  instance_type     = var.instance_type
  key               = var.key
  id_subnet         = module.vpc.public-vpc-subnet
}