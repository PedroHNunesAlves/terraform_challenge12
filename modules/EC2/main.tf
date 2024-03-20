data "aws_instances" "retrieveEC2" {

  filter {
    name = "tag:Terraform"
    values = ["true"]
  }
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "ec2TerraPedro"

  ami = "ami-0d7a109bf30624c99"
  associate_public_ip_address = true
  instance_type          = var.instance_type
  key_name               = var.key
  monitoring             = true
  vpc_security_group_ids = [var.security_group_id]
  subnet_id              = var.id_subnet



  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}







