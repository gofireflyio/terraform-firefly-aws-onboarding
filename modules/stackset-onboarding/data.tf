data "aws_caller_identity" "current" {}


data "aws_organizations_organization" "current" {}

data "aws_organizations_organizational_unit_child_accounts" "accounts" {
  parent_id = var.org-ou-id == "" ? data.aws_organizations_organization.current.roots[0].id : var.org-ou-id
}

data "http" "cloudformation_template" {
  url = var.cloudformation_template_url
}

locals {
  discovered_accounts = var.org-ou-id != "" ? [for account in data.aws_organizations_organizational_unit_child_accounts.accounts.accounts : account if account.status == "ACTIVE"] : []
  account_ids = [for account in local.discovered_accounts : account.id]
  applied_accounts = length(local.discovered_accounts) > 0 ? local.account_ids : var.accounts

}