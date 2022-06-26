locals {
  common_tags = {
    env = terraform.workspace
    project_type = var.project
    
  }
}