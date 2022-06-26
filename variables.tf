/*variable "my_access_key" {
  type        = string
  description = "Access key Id"
  sensitive = true
}
variable "my_secret_key" {
  type        = string
  description = "Secret Access key Id"
  sensitive = true
}*/
variable "region" {
  type = string
}

variable "name_prefix" {}

variable "project" {
  type = string
}
variable "instance_type" {
}

variable "TFC_WORKSPACE_NAME" {
  type = string
  default = ""
}