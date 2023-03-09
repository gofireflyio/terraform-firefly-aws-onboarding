variable "region" {
  type = string
}

variable "env" {
  type = string
}

variable "target_event_bus_arn"{
  type = string
}

variable "invoke_firefly_role_arn"{
  type = string
}

variable "tags" {
  type = map
  default = {}
  description = "Tags to apply to all created AWS resources"
}

variable "resource_prefix" {
  type = string
  default = ""
  description = "Prefix to add to all resources created"
}