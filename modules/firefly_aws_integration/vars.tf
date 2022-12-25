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

variable "is_prod" {
  type        = bool
  default     = false
  description = "Is Production?"
}

variable "full_scan_enabled" {
  type        = bool
  default     = true
  description = "Full scan enabled?"
}

variable "event_driven"{
  type = bool
  default = false 
  description = "Is event driven infrastructre installed?"
}

variable "target_event_bus_arn"{
    type = string
}

variable "role_external_id" {
  type        = string
  description = "The External Id for the Firefly role generated"
}

variable "role_name"{
  type        = string
  description = "The name for the Firefly role generated"
}

variable "firefly_deny_list_policy_name"{
  type        = string
  description = "The name for the Firefly deny policy generated"
}

variable "use_config_service" {
  type = bool
  default = true
  description = "Allow Firefly to read the config service s3 objects"
}

variable "event_driven_regions" {
  type = list(string)
}

variable "terraform_create_rules" {
  type = bool
  default = false
}