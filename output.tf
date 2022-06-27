output "instance_private_ip" {
  value =module.ec2-instance.private_ip
}

output "instance_public_ip" {
  value = module.ec2-instance.public_ip
}