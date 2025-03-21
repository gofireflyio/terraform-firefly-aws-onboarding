data "aws_caller_identity" "current" {}

locals {
  account_id      = data.aws_caller_identity.current.account_id
  allowed_objects = length(var.allowed_s3_iac_buckets) > 0 ? [for value in var.allowed_s3_iac_buckets : "arn:aws:s3:::${value}/*tfstate"] : ["arn:aws:s3:::*/*tfstate"]
  aws_managed_buckets = [
    "arn:aws:s3:::elasticbeanstalk*/*",
    "arn:aws:s3:::aws-emr-resources*/*"
  ]
  s3_objects = concat(local.aws_managed_buckets, local.allowed_objects)
  allowed_list_objects = concat(
    length(var.allowed_s3_iac_buckets) > 0 ? [for value in var.allowed_s3_iac_buckets : "arn:aws:s3:::${value}"] : [],
    local.aws_managed_buckets
  )
  s3_objects_to_allow = local.s3_objects
}

resource "aws_iam_policy" "firefly_readonly_policy_deny_list" {
  name        = "${var.resource_prefix}FireflyReadonlyPolicyDenyList"
  path        = "/"
  description = "Read only permission for the cloud configuration - Deny List"

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : [
          "acm-pca:DescribeCertificateAuthorityAuditReport",
          "athena:BatchGetQueryExecution",
          "athena:GetQueryExecution",
          "athena:GetQueryResults",
          "athena:GetQueryResultsStream",
          "athena:ListQueryExecutions",
          "auditmanager:*",
          "braket:Search*",
          "cassandra:*",
          "chime:GetApp*",
          "chime:ListChannel*",
          "chime:ListChannels*",
          "chime:DescribeChannel*",
          "chime:ListApp*",
          "chime:DescribeApp*",
          "chime:GetUser*",
          "chime:ListMeeting*",
          "chime:ListMeetings*",
          "chime:GetMeeting",
          "chime:GetChannel*",
          "chime:ListGroups",
          "chime:GetPhoneNumber",
          "chime:GetSipMedia*",
          "chime:GetAccount*",
          "chime:ListDirectories",
          "chime:ListDomains",
          "chime:GetMessagingSessionEndpoint",
          "chime:ListUsers",
          "chime:GetProxySession",
          "chime:GetGlobalSettings",
          "chime:GetEventsConfiguration",
          "chime:ListAccountUsageReportData",
          "chime:ListProxySessions",
          "chime:ListAccounts",
          "chime:ListCDRBucket",
          "chime:ListCallingRegions",
          "chime:ListSipRules",
          "chime:ListAttendeeTags",
          "chime:ListSupportedPhoneNumberCountries",
          "chime:GetCDRBucket",
          "chime:GetAttendee",
          "chime:ListPhoneNumbers",
          "chime:RetrieveDataExports",
          "chime:ListAttendees",
          "chime:ListApiKeys",
          "chime:GetMediaCapturePipeline",
          "chime:SearchAvailablePhoneNumbers",
          "chime:GetTelephonyLimits",
          "chime:ListBots",
          "chime:GetRoom",
          "chime:ListMediaCapturePipelines",
          "chime:ListPhoneNumberOrders",
          "chime:GetSipRule",
          "chime:GetPhoneNumberOrder",
          "chime:GetBot",
          "chime:ValidateAccountResource",
          "chime:ListRooms",
          "chime:GetDomain",
          "chime:ListDelegates",
          "chime:GetRetentionSettings",
          "chime:ListSipMediaApplications",
          "chime:GetPhoneNumberSettings",
          "chime:ListRoomMemberships",
          "codestar:Verify*",
          "cognito-sync:QueryRecords",
          "datapipeline:EvaluateExpression",
          "datapipeline:QueryObjects",
          "datapipeline:Validate*",
          "dax:BatchGetItem",
          "dax:GetItem",
          "dax:Query",
          "dax:Scan",
          "detective:SearchGraph",
          "dms:Test*",
          "ds:Check*",
          "ds:Verify*",
          "ds:DescribeCertificate",
          "ds:ListCertificates",
          "elastictranscoder:ListJobsByPipeline",
          "elastictranscoder:ListJobsByStatus",
          "kinesisvideo:GetClip",
          "kinesisvideo:GetDASHStreamingSessionURL",
          "kinesisvideo:GetHLSStreamingSessionURL",
          "lakeformation:GetTableObjects",
          "lakeformation:GetWorkUnitResults",
          "lakeformation:GetWorkUnits",
          "license-manager:GetAccessToken",
          "license-manager:GetGrant",
          "license-manager:ListTokens",
          "lightsail:GetContainerAPIMetadata",
          "lightsail:GetContainerImages",
          "lightsail:GetContainerLog",
          "lightsail:GetDiskSnapshot",
          "lightsail:GetDiskSnapshots",
          "lightsail:GetDistributionLatestCacheReset",
          "lightsail:GetDistributionMetricData",
          "lightsail:GetExportSnapshotRecords",
          "lightsail:GetInstanceAccessDetails",
          "lightsail:GetLoadBalancerMetricData",
          "lightsail:GetRelationalDatabaseEvents",
          "lightsail:GetRelationalDatabaseLogEvents",
          "lightsail:GetRelationalDatabaseMetricData",
          "lightsail:GetRelationalDatabaseSnapshot",
          "lightsail:GetRelationalDatabaseSnapshots",
          "logs:DescribeExportTasks",
          "logs:DescribeQueries",
          "logs:GetLogEvents",
          "logs:GetLogRecord",
          "logs:GetQueryResults",
          "macie2:GetFindings",
          "macie2:GetMacieSession",
          "macie2:GetUsageStatistics",
          "macie2:GetUsageTotals",
          "macie2:ListFindings",
          "polly:SynthesizeSpeech",
          "rekognition:CompareFaces",
          "wafv2:CheckCapacity",
          "workdocs:CheckAlias",
          "workmail:Search*",
          "cognito-identity:GetCredentialsForIdentity",
          "cognito-identity:GetIdentityPoolRoles",
          "cognito-identity:GetOpenId*",
          "cognito-idp:GetSigningCertificate",
          "connect:GetFederationToken",
          "secretsmanager:GetRandomPassword",
          "secretsmanager:GetSecretValue",
          "consolidatedbilling:*",
          "freetier:*",
          "invoicing:*",
          "payments:*"
        ],
        "Effect" : "Deny",
        "Resource" : "*"
      },
    ]
  })
  tags = var.tags
}

resource "aws_iam_policy" "explicit_deny_s3_object_list" {
  count       = length(var.allowed_s3_iac_buckets) > 0 ? 1 : 0
  name        = "${var.resource_prefix}ExplicitDenyS3ObjectList"
  path        = "/"
  description = "Deny list for S3 objects"

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : [
          "s3:ListBucket"
        ],
        "Effect" : "Deny",
        "Resource" : local.allowed_list_objects
      }
    ]
  })
  tags = var.tags
}

resource "aws_iam_policy" "firefly_s3_specific_permission" {
  name        = "${var.resource_prefix}S3SpecificReadPermission"
  path        = "/"
  description = "Read only permission for the Specific S3 Buckets"

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : [
          "kms:Decrypt"
        ],
        "Effect" : "Allow",
        "Resource" : "arn:aws:kms:*:${local.account_id}:key/*"
      },
      {
        "Action" : [
          "s3:GetObject"
        ],
        "Effect" : "Deny",
        "NotResource" : local.s3_objects_to_allow
      },
      {
        "Action" : [
          "s3:PutBucketNotification"
        ],
        "Effect" : "Allow",
        "Resource" : "arn:aws:s3:::*"
      },
    ]
  })
  tags = var.tags
}

resource "aws_iam_policy" "firefly_additional_fetching_permission" {
  name        = "${var.resource_prefix}AdditionalFetchingPermission"
  path        = "/"
  description = "Read only permission for missing aws resources"

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : [
          "elasticmapreduce:GetAutoTerminationPolicy",
        ]
        "Resource" : "arn:aws:elasticmapreduce:*:${local.account_id}:cluster/*"
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "glue:GetResourcePolicies"
        ],
        "Resource" : [
          "*"
        ]
      }
    ]
  })
  tags = var.tags
}

resource "aws_iam_role" "firefly_cross_account_access_role" {
  name = var.role_name
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : "sts:AssumeRole",
        "Principal" : {
          "AWS" : "arn:aws:iam::${var.firefly_organization_id}:root"
        },
        "Effect" : "Allow",
        "Condition" : {
          "StringEquals" : {
            "sts:ExternalId" : var.external_id
          }
        }
      }
    ]
  })
  tags = var.tags
}

resource "aws_iam_role_policy_attachment" "firefly_readonly_policy_deny_list" {
  role       = aws_iam_role.firefly_cross_account_access_role.name
  policy_arn = aws_iam_policy.firefly_readonly_policy_deny_list.arn
}

resource "aws_iam_role_policy_attachment" "firefly_s3_specific_permission" {
  role       = aws_iam_role.firefly_cross_account_access_role.name
  policy_arn = aws_iam_policy.firefly_s3_specific_permission.arn
  depends_on = [aws_iam_role_policy_attachment.firefly_readonly_policy_deny_list]
}

resource "aws_iam_role_policy_attachment" "firefly_readonly_access" {
  role       = aws_iam_role.firefly_cross_account_access_role.name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  depends_on = [aws_iam_role_policy_attachment.firefly_s3_specific_permission]
}

resource "aws_iam_role_policy_attachment" "firefly_security_audit" {
  role       = aws_iam_role.firefly_cross_account_access_role.name
  policy_arn = "arn:aws:iam::aws:policy/SecurityAudit"
  depends_on = [aws_iam_role_policy_attachment.firefly_readonly_access]
}

resource "aws_iam_role_policy_attachment" "firefly_additional_fetching_permission" {
  role       = aws_iam_role.firefly_cross_account_access_role.name
  policy_arn = aws_iam_policy.firefly_additional_fetching_permission.arn
  depends_on = [aws_iam_role_policy_attachment.firefly_security_audit]
}

resource "aws_iam_role_policy_attachment" "firefly_explicit_deny_s3_object_list" {
  count      = length(var.allowed_s3_iac_buckets) > 0 ? 1 : 0
  role       = aws_iam_role.firefly_cross_account_access_role.name
  policy_arn = aws_iam_policy.explicit_deny_s3_object_list[count.index].arn
  depends_on = [aws_iam_role_policy_attachment.firefly_additional_fetching_permission]
}
