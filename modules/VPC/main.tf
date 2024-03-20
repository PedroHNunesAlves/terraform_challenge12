module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "PedritoVPC"
  cidr = var.vpc-CIDR

  azs             = [var.availability-zone]
  private_subnets = [var.subnet-private-CIDR]
  public_subnets  = [var.subnet-public-CIDR]

  tags = {
    Terraform = "true"
  }
}