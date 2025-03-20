variable "profile" {
  description = "The aws profile to create aws provider with"
  default     = ""
  type        = string
}

variable "access_key" {
  description = "The aws access key to create aws provider with"
  default     = ""
  type        = string
}

variable "secret_key" {
  description = "The aws secret key to create aws provider with"
  default     = ""
  type        = string
}

variable "session_name" {
  description = "The aws session name to create aws provider with"
  default     = "firefly"
  type        = string
}

variable "aws_assume_role_arn" {
  description = "The aws assume role arn to create aws provider with"
  default     = ""
  type        = string
}

variable "aws_assume_web_identity_role_arn" {
  description = "The aws assume web identity role arn to create aws provider with"
  default     = ""
  type        = string
}

variable "aws_assume_web_identity_role_token" {
  description = "Value of a web identity token from an OpenID Connect to create aws provider with"
  default     = ""
  type        = string
}

variable "aws_assume_web_identity_role_token_file" {
  description = "A File containing a web identity token from an OpenID Connect to create aws provider with"
  default     = ""
  type        = string
}