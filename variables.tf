variable "name" {
  type        = string
  description = "Name of the AWS integration"
}

variable "role_external_id" {
  type        = string
  description = "The External Id for the Firefly role generated"
}

variable "firefly_token" {
  type = string
  description = "Token returned as result of login request"
  default = ""
}

variable "firefly_access_key" {
  type        = string
  description = "Your authentication access_key"
  default = ""
}

variable "firefly_secret_key" {
  type        = string
  description = "Your authentication secret_key"
  default = ""
}

variable "enable_iac_auto_discover" {
  type        = bool
  description = "Whether to create the integration with IaC auto discover (searches for state files in S3 buckets)"
  default     = true
}

variable "allowed_s3_iac_buckets" {
  type        = list(string)
  description = "The list of S3 buckets to allow Firefly to read state files from. Omit to allow all buckets."
  default     = []
}

variable "firefly_endpoint" {
  type        = string
  description = "The Firefly endpoint to register account management"
  default     = "https://prodapi.gofirefly.io/api"
}

variable is_prod {
  type        = bool
  default     = false
  description = "Is Production?"
}

variable exist_integration {
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
 
variable full_scan_enabled {
  type        = bool
  default     = true
  description = "Full scan enabled?"
}

variable is_event_driven {
  type        = bool
  default     = false
  description = "Install Event driven?"
}

variable terraform_create_rules {
  type        = bool
  default     = false
  description = "Create eventbridge rules using terraform?"
}

variable event_driven_regions {
  type        = list(string)
  description = "The list of regions to install firefly event driven in"
  default     = [
    "us-east-2", "us-east-1", "us-west-1", "us-west-2", "af-south-1", "ap-east-1", "ap-south-1", "ap-northeast-3",
    "ap-northeast-2", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ca-central-1", "cn-north-1",
    "cn-northwest-1", "eu-central-1", "eu-west-1", "eu-west-2", "eu-south-1", "eu-west-3", "eu-north-1", "me-south-1",
    "sa-east-1","ap-south-2","ap-southeast-3","eu-south-2","me-central-1","il-central-1"
  ]
}

variable "target_event_bus_arn" {
  type    = string
  description = "The firefly event bus arn to put cloudtrail events in"
  default = "arn:aws:events:us-east-1:094724549126:event-bus/prod-stablefly-event-bus"
}

variable "buckets_by_region" {
  type        = map(list(string))
  description = ""
  default     = {}
}

variable "iac_events_sns" {
  default     = "arn:aws:sns:us-east-1:094724549126:firefly-iac-states-update-topic"
  description = "Firefly sns which receives s3 object events notification"
}

variable "use_config_service" {
  type        = bool
  default     = false
  description = "Allow Firefly to read the config service s3 objects"
}

variable "enable_evntbridge_permissions" {
  type        = bool
  default = true
  description = "enable firefly eventbridge permissions"
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
  description = "FireFly AWS account ID to allow assume role from, do not override unless explicitly needed"
}

variable "allowed_account_ids" {
  type = list(string)
  default = []
  description = "List of allowed AWS account IDs to prevent you from mistakenly using an incorrect one (and potentially end up destroying a live environment)."
}