locals {
  firefly_role_name = "${var.resource_prefix}${var.firefly_role_name}"
  firefly_deny_list_policy_name = "${var.resource_prefix}${var.firefly_deny_list_policy_name}"
}

provider "aws" {
  alias      = "ap_northeast_1"
  region     = "ap-northeast-1"
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
  dynamic assume_role {
    for_each = var.aws_assume_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn     = var.aws_assume_role_arn
      session_name = var.session_name
      external_id  =  var.external_id == "" ? null : var.external_id
    }
  }
  dynamic assume_role_with_web_identity {
    for_each = var.aws_assume_web_identity_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn                = var.aws_assume_web_identity_role_arn
      web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
      web_identity_token_file = var.aws_assume_web_identity_role_token_file
    }
  }
}

provider "aws" {
  alias      = "ap_northeast_2"
  region     = "ap-northeast-2"
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
  dynamic assume_role {
    for_each = var.aws_assume_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn     = var.aws_assume_role_arn
      session_name = var.session_name
      external_id  =  var.external_id == "" ? null : var.external_id
    }
  }
  dynamic assume_role_with_web_identity {
    for_each = var.aws_assume_web_identity_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn                = var.aws_assume_web_identity_role_arn
      web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
      web_identity_token_file = var.aws_assume_web_identity_role_token_file
    }
  }

}

provider "aws" {
  alias      = "ap_northeast_3"
  region     = "ap-northeast-3"
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
  dynamic assume_role {
    for_each = var.aws_assume_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn     = var.aws_assume_role_arn
      session_name = var.session_name
      external_id  =  var.external_id == "" ? null : var.external_id
    }
  }
  dynamic assume_role_with_web_identity {
    for_each = var.aws_assume_web_identity_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn                = var.aws_assume_web_identity_role_arn
      web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
      web_identity_token_file = var.aws_assume_web_identity_role_token_file
    }
  }

}

provider "aws" {
  alias      = "ap_south_1"
  region     = "ap-south-1"
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
  dynamic assume_role {
    for_each = var.aws_assume_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn     = var.aws_assume_role_arn
      session_name = var.session_name
      external_id  =  var.external_id == "" ? null : var.external_id
    }
  }
  dynamic assume_role_with_web_identity {
    for_each = var.aws_assume_web_identity_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn                = var.aws_assume_web_identity_role_arn
      web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
      web_identity_token_file = var.aws_assume_web_identity_role_token_file
    }
  }

}

provider "aws" {
  alias      = "ap_southeast_1"
  region     = "ap-southeast-1"
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
  dynamic assume_role {
    for_each = var.aws_assume_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn     = var.aws_assume_role_arn
      session_name = var.session_name
      external_id  =  var.external_id == "" ? null : var.external_id
    }
  }
  dynamic assume_role_with_web_identity {
    for_each = var.aws_assume_web_identity_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn                = var.aws_assume_web_identity_role_arn
      web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
      web_identity_token_file = var.aws_assume_web_identity_role_token_file
    }
  }

}

provider "aws" {
  alias      = "ap_southeast_2"
  region     = "ap-southeast-2"
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
  dynamic assume_role {
    for_each = var.aws_assume_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn     = var.aws_assume_role_arn
      session_name = var.session_name
      external_id  =  var.external_id == "" ? null : var.external_id
    }
  }
  dynamic assume_role_with_web_identity {
    for_each = var.aws_assume_web_identity_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn                = var.aws_assume_web_identity_role_arn
      web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
      web_identity_token_file = var.aws_assume_web_identity_role_token_file
    }
  }

}

provider "aws" {
  alias      = "ca_central_1"
  region     = "ca-central-1"
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
  dynamic assume_role {
    for_each = var.aws_assume_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn     = var.aws_assume_role_arn
      session_name = var.session_name
      external_id  =  var.external_id == "" ? null : var.external_id
    }
  }
  dynamic assume_role_with_web_identity {
    for_each = var.aws_assume_web_identity_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn                = var.aws_assume_web_identity_role_arn
      web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
      web_identity_token_file = var.aws_assume_web_identity_role_token_file
    }
  }

}

provider "aws" {
  alias      = "eu_central_1"
  region     = "eu-central-1"
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
  dynamic assume_role {
    for_each = var.aws_assume_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn     = var.aws_assume_role_arn
      session_name = var.session_name
      external_id  =  var.external_id == "" ? null : var.external_id
    }
  }
  dynamic assume_role_with_web_identity {
    for_each = var.aws_assume_web_identity_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn                = var.aws_assume_web_identity_role_arn
      web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
      web_identity_token_file = var.aws_assume_web_identity_role_token_file
    }
  }

}

provider "aws" {
  alias      = "eu_north_1"
  region     = "eu-north-1"
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
  dynamic assume_role {
    for_each = var.aws_assume_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn     = var.aws_assume_role_arn
      session_name = var.session_name
      external_id  =  var.external_id == "" ? null : var.external_id
    }
  }
  dynamic assume_role_with_web_identity {
    for_each = var.aws_assume_web_identity_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn                = var.aws_assume_web_identity_role_arn
      web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
      web_identity_token_file = var.aws_assume_web_identity_role_token_file
    }
  }

}

provider "aws" {
  alias      = "eu_west_1"
  region     = "eu-west-1"
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
  dynamic assume_role {
    for_each = var.aws_assume_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn     = var.aws_assume_role_arn
      session_name = var.session_name
      external_id  =  var.external_id == "" ? null : var.external_id
    }
  }
  dynamic assume_role_with_web_identity {
    for_each = var.aws_assume_web_identity_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn                = var.aws_assume_web_identity_role_arn
      web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
      web_identity_token_file = var.aws_assume_web_identity_role_token_file
    }
  }

}

provider "aws" {
  alias      = "eu_west_2"
  region     = "eu-west-2"
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
  dynamic assume_role {
    for_each = var.aws_assume_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn     = var.aws_assume_role_arn
      session_name = var.session_name
      external_id  =  var.external_id == "" ? null : var.external_id
    }
  }
  dynamic assume_role_with_web_identity {
    for_each = var.aws_assume_web_identity_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn                = var.aws_assume_web_identity_role_arn
      web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
      web_identity_token_file = var.aws_assume_web_identity_role_token_file
    }
  }

}

provider "aws" {
  alias      = "eu_west_3"
  region     = "eu-west-3"
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
  dynamic assume_role {
    for_each = var.aws_assume_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn     = var.aws_assume_role_arn
      session_name = var.session_name
      external_id  =  var.external_id == "" ? null : var.external_id
    }
  }
  dynamic assume_role_with_web_identity {
    for_each = var.aws_assume_web_identity_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn                = var.aws_assume_web_identity_role_arn
      web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
      web_identity_token_file = var.aws_assume_web_identity_role_token_file
    }
  }

}

provider "aws" {
  alias      = "sa_east_1"
  region     = "sa-east-1"
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
  dynamic assume_role {
    for_each = var.aws_assume_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn     = var.aws_assume_role_arn
      session_name = var.session_name
      external_id  =  var.external_id == "" ? null : var.external_id
    }
  }
  dynamic assume_role_with_web_identity {
    for_each = var.aws_assume_web_identity_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn                = var.aws_assume_web_identity_role_arn
      web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
      web_identity_token_file = var.aws_assume_web_identity_role_token_file
    }
  }

}

provider "aws" {
  alias      = "us_east_1"
  region     = "us-east-1"
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
  dynamic assume_role {
    for_each = var.aws_assume_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn     = var.aws_assume_role_arn
      session_name = var.session_name
      external_id  = var.external_id == "" ? null : var.external_id
    }
  }
  dynamic assume_role_with_web_identity {
    for_each = var.aws_assume_web_identity_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn                = var.aws_assume_web_identity_role_arn
      web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
      web_identity_token_file = var.aws_assume_web_identity_role_token_file
    }
  }

}

 provider "aws" {
   alias      = "us_east_2"
   region     = "us-east-2"
   profile    = var.profile
   access_key = var.access_key
   secret_key = var.secret_key
   dynamic assume_role {
     for_each = var.aws_assume_role_arn == "" ? toset([0]) : toset([1])
     content {
       role_arn     = var.aws_assume_role_arn
       session_name = var.session_name
       external_id  = var.external_id == "" ? null : var.external_id
     }
   }
   dynamic assume_role_with_web_identity {
     for_each = var.aws_assume_web_identity_role_arn == "" ? toset([0]) : toset([1])
     content {
       role_arn                = var.aws_assume_web_identity_role_arn
       web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
       web_identity_token_file = var.aws_assume_web_identity_role_token_file
     }
   }

 }

 provider "aws" {
   alias      = "us_west_1"
   region     = "us-west-1"
   profile    = var.profile
   access_key = var.access_key
   secret_key = var.secret_key
   dynamic assume_role {
     for_each = var.aws_assume_role_arn == "" ? toset([0]) : toset([1])
     content {
       role_arn     = var.aws_assume_role_arn
       session_name = var.session_name
       external_id  =  var.external_id == "" ? null : var.external_id
     }
   }
   dynamic assume_role_with_web_identity {
     for_each = var.aws_assume_web_identity_role_arn == "" ? toset([0]) : toset([1])
     content {
       role_arn                = var.aws_assume_web_identity_role_arn
       web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
       web_identity_token_file = var.aws_assume_web_identity_role_token_file
     }
   }

 }

provider "aws" {
  alias      = "us_west_2"
  region     = "us-west-2"
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
  dynamic assume_role {
    for_each = var.aws_assume_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn     = var.aws_assume_role_arn
      session_name = var.session_name
      external_id  = var.external_id == "" ? "nothing" : var.external_id
    }
  }
  dynamic assume_role_with_web_identity {
    for_each = var.aws_assume_web_identity_role_arn == "" ? toset([0]) : toset([1])
    content {
      role_arn                = var.aws_assume_web_identity_role_arn
      web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
      web_identity_token_file = var.aws_assume_web_identity_role_token_file
    }
  }

}

module "firefly_auth" {
  count = var.firefly_token == "" ? 1 : 0
  source = "./modules/firefly_auth"
  firefly_endpoint = var.firefly_endpoint
  firefly_access_key = var.firefly_access_key
  firefly_secret_key = var.firefly_secret_key
}

module "firefly_aws_integration" {
  count = var.exist_integration? 0 : 1
  source = "./modules/firefly_aws_integration"
  firefly_token = length(module.firefly_auth) > 0 ? module.firefly_auth[0].firefly_token : var.firefly_token
  name = var.name
  firefly_endpoint = var.firefly_endpoint
  firefly_organization_id = var.firefly_organization_id
  event_driven = var.is_event_driven
  target_event_bus_arn = var.target_event_bus_arn
  is_prod = var.is_prod
  full_scan_enabled = var.full_scan_enabled
  role_external_id = var.role_external_id
  role_name = local.firefly_role_name
  firefly_deny_list_policy_name = local.firefly_deny_list_policy_name
  terraform_create_rules = var.terraform_create_rules
  event_driven_regions = var.event_driven_regions
  providers          = {
    aws = aws.us_east_1
  }
  resource_prefix = var.resource_prefix
  should_autodiscover_disabled = !var.enable_iac_auto_discover
  allowed_s3_iac_buckets = var.allowed_s3_iac_buckets
}

module "invoke_firefly_permissions" {
  count = var.is_event_driven ? 1 : 0
  source = "./modules/invoke_firefly_permissions"
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  providers          = {
    aws = aws.us_east_1
  }
  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "firefly_eventbridge_permissions" {
  count = var.enable_evntbridge_permissions ? 1 : 0
  source = "./modules/eventbridge_permissions"
  firefly_role_name = local.firefly_role_name
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions,
  ]
  providers          = {
    aws = aws.us_east_1
  }
  tags = var.tags
  resource_prefix = var.resource_prefix
}

// create eventbridge rules using workflow for exist integration
module "run_workflow" {
  count = var.is_event_driven && !var.terraform_create_rules && var.exist_integration ? 1 : 0
  source = "./modules/run_workflow"
  firefly_token = var.firefly_token
  name = var.name
  firefly_endpoint = var.firefly_endpoint
  events_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  event_driven_regions = var.event_driven_regions
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions,
    module.firefly_eventbridge_permissions
  ]
}

module "event_driven_ap_northeast_1" {
  count = var.is_event_driven && var.terraform_create_rules && contains(var.event_driven_regions, "ap-northeast-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "ap-northeast-1"
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions
  ]
  providers      = {
    aws = aws.ap_northeast_1
  }
  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "event_driven_ap_northeast_2" {
  count = var.is_event_driven && var.terraform_create_rules && contains(var.event_driven_regions, "ap-northeast-2") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "ap-northeast-2"
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions
  ]
  providers      = {
    aws = aws.ap_northeast_2
  }
  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "event_driven_ap_northeast_3" {
  count = var.is_event_driven && var.terraform_create_rules && contains(var.event_driven_regions, "ap-northeast-3") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "ap-northeast-3"
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions
  ]
  providers      = {
    aws = aws.ap_northeast_3
  }
  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "event_driven_ap_south_1" {
  count = var.is_event_driven && var.terraform_create_rules && contains(var.event_driven_regions, "ap-south-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "ap-south-1"
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions
  ]
  providers      = {
    aws = aws.ap_south_1
  }
  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "event_driven_ap_southeast_1" {
  count = var.is_event_driven && var.terraform_create_rules && contains(var.event_driven_regions, "ap-southeast-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "ap-southeast-1"
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions
  ]
  providers      = {
    aws = aws.ap_southeast_1
  }
  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "event_driven_ap_southeast_2" {
  count = var.is_event_driven && var.terraform_create_rules && contains(var.event_driven_regions, "ap-southeast-2") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "ap-southeast-2"
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions
  ]
  providers      = {
    aws = aws.ap_southeast_2
  }
  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "event_driven_ca_central_1" {
  count = var.is_event_driven && var.terraform_create_rules && contains(var.event_driven_regions, "ca-central-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "ca-central-1"
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions
  ]
  providers      = {
    aws = aws.ca_central_1
  }
  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "event_driven_eu_central_1" {
  count = var.is_event_driven && var.terraform_create_rules && contains(var.event_driven_regions, "eu-central-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "eu-central-1"
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions
  ]
  providers      = {
    aws = aws.eu_central_1
  }

  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "event_driven_eu_north_1" {
  count = var.is_event_driven && var.terraform_create_rules && contains(var.event_driven_regions, "eu-north-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "eu-north-1"
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions
  ]
  providers      = {
    aws = aws.eu_north_1
  }
  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "event_driven_eu_west_1" {
  count = var.is_event_driven && var.terraform_create_rules && contains(var.event_driven_regions, "eu-west-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "eu-west-1"
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions
  ]
  providers      = {
    aws = aws.eu_west_1
  }

  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "event_driven_eu_west_2" {
  count = var.is_event_driven && var.terraform_create_rules && contains(var.event_driven_regions, "eu-west-2") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "eu-west-2"
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions
  ]
  providers      = {
    aws = aws.eu_west_2
  }
  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "event_driven_eu_west_3" {
  count = var.is_event_driven && var.terraform_create_rules && contains(var.event_driven_regions, "eu-west-3") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "eu-west-3"
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions
  ]
  providers      = {
    aws = aws.eu_west_3
  }
  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "event_driven_sa_east_1" {
  count = var.is_event_driven && var.terraform_create_rules && contains(var.event_driven_regions, "sa-east-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "sa-east-1"
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions
  ]
  providers      = {
    aws = aws.sa_east_1
  }
  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "event_driven_us_east_1" {
  count = var.is_event_driven && var.terraform_create_rules && contains(var.event_driven_regions, "us-east-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "us-east-1"
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions
  ]
  providers      = {
    aws = aws.us_east_1
  }
  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "event_driven_us_east_2" {
  count = var.is_event_driven && var.terraform_create_rules && contains(var.event_driven_regions, "us-east-2") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "us-east-2"
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions
  ]
  providers      = {
    aws = aws.us_east_2
  }
  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "event_driven_us_west_1" {
  count = var.is_event_driven && var.terraform_create_rules && contains(var.event_driven_regions, "us-west-1") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "us-west-1"
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions
  ]
  providers      = {
    aws = aws.us_west_1
  }
  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "event_driven_us_west_2" {
  count = var.is_event_driven && var.terraform_create_rules && contains(var.event_driven_regions, "us-west-2") ? 1 : 0
  source = "./modules/firefly_event_driven"
  env    = var.name
  region = "us-west-2"
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions
  ]
  providers      = {
    aws = aws.us_west_2
  }
  tags = var.tags
  resource_prefix = var.resource_prefix
}

module "iac_events_ap_northeast_1" {
  count = lookup(var.buckets_by_region, "ap-northeast-1", []) != [] ? 1:0
  source = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "ap-northeast-1", [])
  sns_arn = replace(var.iac_events_sns, "us-east-1", "ap-northeast-1")
  region = "ap-northeast-1"
  providers      = {
    aws = aws.ap_northeast_1
  }
}

module "iac_events_ap_northeast_2" {
  count = lookup(var.buckets_by_region, "ap-northeast-2", []) != [] ? 1:0
  source = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "ap-northeast-2", [])
  sns_arn = replace(var.iac_events_sns, "us-east-1", "ap-northeast-2")
  region = "ap-northeast-2"
  providers      = {
    aws = aws.ap_northeast_2
  }
}

module "iac_events_ap_northeast_3" {
  count = lookup(var.buckets_by_region, "ap-northeast-3", []) != [] ? 1:0
  source = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "ap-northeast-3", [])
  sns_arn = replace(var.iac_events_sns, "us-east-1", "ap-northeast-3")
  region = "ap-northeast-3"
  providers      = {
    aws = aws.ap_northeast_3
  }
}

module "iac_events_ap_south_1" {
  count = lookup(var.buckets_by_region, "ap-south-1", []) != [] ? 1:0
  source = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "ap-south-1", [])
  sns_arn = replace(var.iac_events_sns, "us-east-1", "ap-south-1")
  region = "ap-south-1"
  providers      = {
    aws = aws.ap_south_1
  }
}

module "iac_events_ap_southeast_1" {
  count = lookup(var.buckets_by_region, "ap-southeast-1", []) != [] ? 1:0
  source = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "ap-southeast-1", [])
  sns_arn = replace(var.iac_events_sns, "us-east-1", "ap-southeast-1")
  region = "ap-southeast-1"
  providers      = {
    aws = aws.ap_southeast_1
  }
}

module "iac_events_ap_southeast_2" {
  count = lookup(var.buckets_by_region, "ap-southeast-2", []) != [] ? 1:0
  source = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "ap-southeast-2", [])
  sns_arn = replace(var.iac_events_sns, "us-east-1", "ap-southeast-2")
  region = "ap-southeast-2"
  providers      = {
    aws = aws.ap_southeast_2
  }
}

module "iac_events_ca_central_1" {
  count = lookup(var.buckets_by_region, "ca-central-1", []) != [] ? 1:0
  source = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "ca-central-1", [])
  sns_arn = replace(var.iac_events_sns, "us-east-1", "ca-central-1")
  region = "ca-central-1"
  providers      = {
    aws = aws.ca_central_1
  }
}

module "iac_events_eu_central_1" {
  count = lookup(var.buckets_by_region, "eu-central-1", []) != [] ? 1:0
  source = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "eu-central-1", [])
  sns_arn = replace(var.iac_events_sns, "us-east-1", "eu-central-1")
  region = "eu-central-1"
  providers      = {
    aws = aws.eu_central_1
  }
}

module "iac_events_eu_north_1" {
  count = lookup(var.buckets_by_region, "eu-north-1", []) != [] ? 1:0
  source = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "eu-north-1", [])
  sns_arn = replace(var.iac_events_sns, "us-east-1", "eu-north-1")
  region = "eu-north-1"
  providers      = {
    aws = aws.eu_north_1
  }
}

module "iac_events_eu_west_1" {
  count = lookup(var.buckets_by_region, "eu-west-1", []) != [] ? 1:0
  source = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "eu-west-1", [])
  sns_arn = replace(var.iac_events_sns, "us-east-1", "eu-west-1")
  region = "eu-west-1"
  providers      = {
    aws = aws.eu_west_1
  }
}

module "iac_events_eu_west_2" {
  count = lookup(var.buckets_by_region, "eu-west-2", []) != [] ? 1:0
  source = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "eu-west-2", [])
  sns_arn = replace(var.iac_events_sns, "us-east-1", "eu-west-2")
  region = "eu-west-2"
  providers      = {
    aws = aws.eu_west_2
  }
}

module "iac_events_eu_west_3" {
  count = lookup(var.buckets_by_region, "eu-west-3", []) != [] ? 1:0
  source = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "eu-west-3", [])
  sns_arn = replace(var.iac_events_sns, "us-east-1", "eu-west-3")
  region = "eu-west-3"
  providers      = {
    aws = aws.eu_west_3
  }
}

module "iac_events_sa_east_1" {
  count = lookup(var.buckets_by_region, "sa-east-1", []) != [] ? 1:0
  source = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "sa-east-1", [])
  sns_arn = replace(var.iac_events_sns, "us-east-1", "sa-east-1")
  region = "sa-east-1"
  providers      = {
    aws = aws.sa_east_1
  }
}

module "iac_events_us_east_1" {
  count = lookup(var.buckets_by_region, "us-east-1", []) != [] ? 1:0
  source = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "us-east-1", [])
  sns_arn = var.iac_events_sns
  region = "us-east-1"
  providers      = {
    aws = aws.us_east_1
  }
}

module "iac_events_us_east_2" {
  count = lookup(var.buckets_by_region, "us-east-2", []) != [] ? 1:0
  source = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "us-east-2", [])
  sns_arn = replace(var.iac_events_sns, "us-east-1", "us-east-2")
  region = "us-east-2"
  providers      = {
    aws = aws.us_east_2
  }
}

module "iac_events_us_west_1" {
  count = lookup(var.buckets_by_region, "us-west-1", []) != [] ? 1:0
  source = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "us-west-1", [])
  sns_arn = replace(var.iac_events_sns, "us-east-1", "us-west-1")
  region = "us-west-1"
  providers      = {
    aws = aws.us_west_1
  }
}

module "iac_events_us_west_2" {
  count = lookup(var.buckets_by_region, "us-west-2", []) != [] ? 1:0
  source = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "us-west-2", [])
  sns_arn = replace(var.iac_events_sns, "us-east-1", "us-west-2")
  region = "us-west-2"
  providers      = {
    aws = aws.us_west_2
  }
}

module "config_service_setup" {
  depends_on = [module.firefly_aws_integration]
  count = var.use_config_service ? 1 : 0
  source = "./modules/config_service_setup"
  firefly_deny_policy_name = local.firefly_deny_list_policy_name
  providers = {
    aws = aws.us_east_1
  }
  firefly_role_name = local.firefly_role_name
  tags = var.tags
  resource_prefix = var.resource_prefix
}