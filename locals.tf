locals {
  common_tags = {
    env = terraform.workspace
    project_type = var.project
    
  }

  workspace = var.TFC_WORKSPACE_NAME != "" ? var.TFC_WORKSPACE_NAME : terraform.workspace
}