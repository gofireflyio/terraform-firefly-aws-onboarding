variable "firefly_role_name" {
  type = string
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "Tags to apply to all created AWS resources"
}

variable "resource_prefix" {
  type        = string
  default     = ""
  description = "Prefix to add to all resources created"
}

variable "target_event_bus_arn" {
  type = string
}