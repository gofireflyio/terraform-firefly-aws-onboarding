variable "firefly_endpoint" {
  type        = string
  description = "The Firefly endpoint to register account management"
  default     = "https://prodapi.firefly.ai/api"
}

variable "firefly_access_key" {
  type        = string
  description = "Your authentication access_key"
  validation {
    condition = var.firefly_access_key != ""
    error_message = "Variable \"firefly_access_key\" cannot be empty."
  }
}

variable "firefly_secret_key" {
  type        = string
  description = "Your authentication secret_key"
  validation {
    condition = var.firefly_secret_key != ""
    error_message = "Variable \"firefly_secret_key\" cannot be empty."
  }
}