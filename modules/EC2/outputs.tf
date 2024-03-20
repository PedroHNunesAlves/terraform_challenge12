output "ec2filterbyTerraform" {
  value = data.aws_instances.retrieveEC2.ids
}