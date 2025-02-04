variable "external-id" {
  type = string
}
variable "org-ou-ids" {
  type = list(string)
  default = [""]
}

variable "failure_tolerance_count" {
  type = number
  default = 1
}

variable "cloudformation_template_url" {
  type = string
  default = "https://infralight-templates-public.s3.us-east-1.amazonaws.com/stackset-cloudformation-template.yml"
}

variable "endpoint" {
  type = string
  default = "https://prodapi.firefly.ai/api"
}
variable "run_workflow" {
  type = bool
  default = true
}
variable "is_prod" {
  type = bool
  default = false
}
variable "event_driven" {
  type = bool
  default = true
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
variable "token" {
  type = string
}

variable "max_concurrent_deploys" {
  type = number
  default = 1
}