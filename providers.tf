// us_east_1
provider "aws" {
  region     = "us-east-1"
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
  dynamic "assume_role" {
    for_each = var.aws_assume_role_arn == "" ? toset([]) : toset([0])
    content {
      role_arn     = var.aws_assume_role_arn
      session_name = var.session_name
      external_id  = var.external_id == "" ? null : var.external_id
    }
  }
  dynamic "assume_role_with_web_identity" {
    for_each = var.aws_assume_web_identity_role_arn == "" ? toset([]) : toset([0])
    content {
      role_arn                = var.aws_assume_web_identity_role_arn
      web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
      web_identity_token_file = var.aws_assume_web_identity_role_token_file
    }
  }

}
