data "aws_organizations_organization" "current" {}


data "aws_organizations_organizational_unit_child_accounts" "accounts" {
  for_each = toset(var.org-ou-ids)
  parent_id = length(var.org-ou-ids) > 0 ? each.value : null
}


data "http" "cloudformation_template" {
  url = var.cloudformation_template_url
}


locals {
  account_ids = flatten([
    for ou_id in var.org-ou-ids : data.aws_organizations_organizational_unit_child_accounts.accounts[ou_id].accounts[*].id if data.aws_organizations_organizational_unit_child_accounts.accounts[ou_id].accounts[*].status == "ACTIVE"
  ])
  discovered_accounts = local.account_ids
  applied_accounts = length(local.discovered_accounts) > 0 ? local.account_ids : []
}