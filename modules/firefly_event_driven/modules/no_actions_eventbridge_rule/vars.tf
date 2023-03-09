variable "target_event_bus_arn" {
  type = string
}

variable "service" {
  type = string
}

variable "rule_name"{
  type = string
}

variable "running_region" {
  type = string
}

variable "service_regions"{
  type = list(string)
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