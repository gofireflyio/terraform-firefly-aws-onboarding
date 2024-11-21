variable "name" {
  type        = string
  description = "Name of the AWS integration"
}

variable "role_external_id" {
  type        = string
  description = "The External Id for the Firefly role generated"
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
    #"af-south-1",
    #"ap-east-1",
    "ap-south-1",
    #"ap-south-2",
    "ap-southeast-1",
    "ap-southeast-2",
    #"ap-southeast-3",
    "ap-northeast-1",
    "ap-northeast-2",
    "ap-northeast-3",
    "ca-central-1",
    #"cn-north-1",
    #"cn-northwest-1",
    "eu-central-1",
    "eu-west-1",
    "eu-west-2",
    "eu-west-3",
    #"eu-south-1",
    #"eu-south-2",
    "eu-north-1",
    #"me-south-1",
    #"me-central-1",
    "sa-east-1",
    #"il-central-1"
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