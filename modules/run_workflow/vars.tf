variable "firefly_access_key" {
  type        = string
  description = "Your authentication access_key"
}

variable "firefly_secret_key" {
  type        = string
  description = "Your authentication secret_key"
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