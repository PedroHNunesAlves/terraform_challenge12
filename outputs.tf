output "VPcInformation" {
  value = module.vpc.vpc_id
}

output "filterEC2byTerraform" {
  value = module.ec2-instance.ec2filterbyTerraform
}
