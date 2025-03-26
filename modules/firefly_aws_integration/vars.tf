variable "firefly_token" {
  type        = string
  description = "Token returned as result of login request, if provided firefly_access_key and firefly_secret_key are ignored"
  default     = ""
}

variable "integration_name" {
  type        = string
  description = "Name of the AWS integration"
}

variable "target_event_bus_arn" {
  type        = string
  description = "The firefly event bus arn to put cloudtrail events in"
}

variable "firefly_endpoint" {
  type        = string
  description = "The Firefly endpoint to register account management"
}

variable "production" {
  type        = bool
  default     = false
  description = "Is Production?"
}

variable "external_id" {
  type        = string
  description = "The External Id for the Firefly role generated"
}

variable "role_name" {
  type        = string
  description = "The name for the Firefly role generated"
}


variable "event_driven_regions" {
  type = list(string)
}


variable "allowed_s3_buckets" {
  type        = list(string)
  description = "The list of S3 buckets to allow Firefly to read state files from. Omit to allow all buckets."
  default     = []
}

variable "allowed_kms_keys" {
  type        = list(string)
  description = "The list of KMS keys to allow Firefly to decrypt. Omit to allow all keys."
  default     = []
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

variable "debug" {
  type = bool
  description = "Enable debug mode"
  default = false
}

variable "firefly_organization_id" {
  type        = string
  default     = "094724549126"
  description = "AWS account ID to allow assume role from"
}