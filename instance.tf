data "aws_availability_zones" "available" {}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.0.0"

  ami = "ami-065efef2c739d613b"
  availability_zone = data.aws_availability_zones.available.names[0]
  instance_type          = var.instance_type[terraform.workspace]
  vpc_security_group_ids = [module.security-group.security_group_id]
  root_block_device = [{
    volume_type = "gp2"
    volume_size = 8
    delete_on_termination = true
    encrypted = false
  }]
  user_data = <<EOF
  #! /bin/bash
  sudo amazon-linux-extras install -y nginx1
  sudo service nginx start
  EOF

  tags = merge(local.common_tags, {
    Name = "${var.name_prefix}-web-instance"
  })

} 