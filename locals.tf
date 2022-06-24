locals {
  common_tags = {
    env = terraform.workspace
    project_type = var.project
    
  }
  #s3_bucket_name = lower("${var.name_prefix}-${random_integer.rand.result}")
}