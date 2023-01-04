terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.12.1"
    }
    terracurl = {
      version = "0.1.0"
      source= "devops-rob/terracurl"
    }
  }
}
