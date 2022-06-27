variable "my_access_key" {
  type        = string
  description = "Access key Id"
  sensitive = true
}

variable "my_secret_key" {
  type        = string
  description = "Secret Access key Id"
  sensitive = true
}

/*variable "public_key" {
  type        = string
  description = "Public Access key Id For Instances"
  sensitive = true
}*/

variable "TFC_WORKSPACE_NAME" {
  type = string
  default = ""
}

variable "region" {
  type = string
}

variable "project" {
  type = string
}

variable "instance_type" {
}

variable "ami_id" {
}

variable "key_name" {
}

variable "name_prefix" {
} 
