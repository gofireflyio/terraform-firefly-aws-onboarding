variable "firefly_token" {
  type = string
  description = "Token returned as result of login request, if provided firefly_access_key and firefly_secret_key are ignored"
  default = ""
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


variable "run_workflow" {
  type = bool
  default = true
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


variable "event_driven_regions" {
  type = list(string)
}

variable "should_autodiscover_disabled" {
  type        = bool
  description = "Whether to create the integration with IaC auto discover (searches for state files in S3 buckets)"
  default     = false
}

variable "allowed_s3_iac_buckets" {
  type        = list(string)
  description = "The list of S3 buckets to allow Firefly to read state files from. Omit to allow all buckets."
  default     = []
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

variable "firefly_organization_id" {
  type = string
  default = "094724549126"
  description = "AWS account ID to allow assume role from"
}

variable "kms_key_arn_list" {
  type        = list(string)
  description = "The list of KMS keys to allow Firefly to decrypt. Omit to allow all keys."
  default     = []
}
