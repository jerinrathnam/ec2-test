module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"
  name = "${var.name_prefix}-sg"
  egress_with_cidr_blocks = [
    {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = "0.0.0.0/0"
    }
  ]
  ingress_with_cidr_blocks = [
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      description = "User-service ports"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "SSH connect with server"
      cidr_blocks = "0.0.0.0/0"
    }
  ]
  tags = merge(local.common_tags, {
    Name = "${var.name_prefix}-web-sg"
  })
 
}