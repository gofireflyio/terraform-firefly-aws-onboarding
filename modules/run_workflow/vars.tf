variable "firefly_token" {
  type = string
  description = "Token returned as result of login request"
}

variable "name" {
  type        = string
  description = "Name of the AWS integration"
}

variable "firefly_endpoint" {
  type        = string
  description = "The Firefly endpoint to register account management"
}

variable "events_role_arn"{
   type        = string
  description = "The role arn used in events service"
}

variable event_driven_regions {
  type        = list(string)
  description = "The list of regions to install firefly event driven in"
}

variable "resource_prefix" {
  type = string
  default = ""
  description = "Prefix to add to all resources created"
}