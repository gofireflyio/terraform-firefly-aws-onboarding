terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.12.1, <= 5.48.0"
    }

    http = {
      source = "hashicorp/http"
      version = "3.4.2"
    }
  }
}
