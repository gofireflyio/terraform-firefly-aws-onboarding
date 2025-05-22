variable "integration_name" {
  type        = string
  description = "Name of the AWS integration"
  default     = ""
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "external_id" {
  type        = string
  description = "The External Id for the Firefly role generated"
  default     = ""
}

variable "firefly_token" {
  type        = string
  description = "Token returned as result of login request"
  default     = ""
}

variable "firefly_access_key" {
  type        = string
  description = "Your authentication access_key"
  default     = ""
}

variable "firefly_secret_key" {
  type        = string
  description = "Your authentication secret_key"
  default     = ""
}

variable "firefly_endpoint" {
  type        = string
  description = "The Firefly endpoint to register account management"
  default     = "https://prodapi.firefly.ai/api"
}

variable "production" {
  type        = bool
  default     = false
  description = "Is Production?"
}

variable "firefly_role_name" {
  default = "firefly-caa-role"
  type    = string
}

variable "allowed_kms_keys" {
  type        = list(string)
  description = "The list of KMS keys to allow Firefly to decrypt. Omit to allow all keys."
  default     = []
}

variable "allowed_s3_buckets" {
  type        = list(string)
  description = "The list of S3 buckets to specifically allow Firefly to read state files from."
  default     = []
}

variable "event_driven_regions" {
  type        = list(string)
  description = "The list of regions to install firefly event driven in"
  default = [
    "us-east-1",
    "us-east-2",
    "us-west-1",
    "us-west-2",
    "ap-south-1",
    "ap-southeast-1",
    "ap-southeast-2",
    "ap-northeast-1",
    "ap-northeast-2",
    "ap-northeast-3",
    "ca-central-1",
    "eu-central-1",
    "eu-west-1",
    "eu-west-2",
    "eu-west-3",
    "eu-north-1",
    "sa-east-1"
  ]
}

variable "firefly_organization_id" {
  type        = string
  default     = "094724549126"
  description = "FireFly AWS account ID to allow assume role from, do not override unless explicitly needed"
}

variable "target_event_bus_arn" {
  type        = string
  description = "The firefly event bus arn to put cloudtrail events in"
  default     = "arn:aws:events:us-east-1:094724549126:event-bus/prod-stablefly-event-bus"
}

variable "concurrency_mode" {
  type    = string
  default = "SOFT_FAILURE_TOLERANCE"
}

variable "failure_tolerance_count" {
  type    = number
  default = 1
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "Tags to apply to all created AWS resources"
}

variable "role_tags" {
  type        = map(any)
  default     = {}
  description = "Tags to apply to created AWS roles"
}

variable "resource_prefix" {
  type        = string
  default     = ""
  description = "Prefix to add to all resources created"
}

variable "org_ou_ids" {
  type    = list(string)
  default = [""]
}

variable "debug" {
  type        = bool
  description = "Enable debug mode"
  default     = false
}

variable "stackset" {
  type    = bool
  default = false
}

variable "max_concurrent_deploys" {
  type    = number
  default = 1
}

