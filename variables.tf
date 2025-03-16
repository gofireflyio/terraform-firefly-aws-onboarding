variable "name" {
  type        = string
  description = "Name of the AWS integration"
  default = ""
}

variable "region" {
  type = string
  default = "us-east-1"
}

variable "role_external_id" {
  type        = string
  description = "The External Id for the Firefly role generated"
  default = ""
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

variable "enable_iac_auto_discover" {
  type        = bool
  description = "Whether to create the integration with IaC auto discover (searches for state files in S3 buckets)"
  default     = true
}

variable "firefly_endpoint" {
  type        = string
  description = "The Firefly endpoint to register account management"
  default     = "https://prodapi.firefly.ai/api"
}

variable "is_prod" {
  type        = bool
  default     = false
  description = "Is Production?"
}

variable "exist_integration" {
  type        = bool
  default     = false
  description = "Whether the integration already exists or not"
}

variable "firefly_role_name" {
  default = "firefly-caa-role"
  type    = string
}

variable "firefly_deny_list_policy_name" {
  type        = string
  description = "The name for the Firefly deny policy generated"
  default     = "FireflyReadonlyPolicyDenyList"
}

variable "full_scan_enabled" {
  type        = bool
  default     = true
  description = "Full scan enabled?"
}

variable "is_event_driven" {
  type        = bool
  default     = false
  description = "Install Event driven?"
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


variable "enable_evntbridge_permissions" {
  type        = bool
  default     = true
  description = "enable firefly eventbridge permissions"
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
  type = string
  default = "SOFT_FAILURE_TOLERANCE"
}

variable "failure_tolerance_count" {
  type = number
  default = 1
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

variable "org_ou_ids" {
  type = list(string)
  default = [""]
}

variable "bulk_onboarding" {
  type = bool
  default = false
}

variable "max_concurrent_deploys" {
  type = number
  default = 1
}

variable "allowed_s3_iac_buckets" {
  type        = list(string)
  description = "The list of S3 buckets to allow Firefly to read state files from. Omit to allow all buckets."
  default     = []
}

variable "kms_key_arn_list" {
  type        = list(string)
  description = "The list of KMS keys to allow Firefly to decrypt. Omit to allow all keys."
  default     = []
}
