output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public-vpc-subnet" {
  value = module.vpc.public_subnets[0]
}