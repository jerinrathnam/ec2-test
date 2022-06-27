locals {
  common_tags = {
    env = local.workspace
    project_type = var.project
  }
  # If it runs in local it take [terraform.workspace]. Otherwise if it runs in Terraform Cloud it takes TFC_WORKSPACE_NAME
  workspace = var.TFC_WORKSPACE_NAME != "" ? var.TFC_WORKSPACE_NAME : terraform.workspace
}


