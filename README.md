# Firefly AWS ReadOnly Integration  
# ![Firefly Logo](firefly.gif)

## Module contents

Firefly terraform module to integrate your aws environment to firefly.

### Prerequisites

- AWS CLI installed (version).
- AWS Terraform provider version `>= 4.12.1` and `<= 5.38.0`
- The aws role running it should have permissions creation of roles in iam.

```shell script
curl --help
```


### Multi Account Installation with Stackset

```hcl-terraform
module "firefly-auth" {
  source                = "github.com/gofireflyio/terraform-firefly-aws-onboarding?ref=v2.13.0/modules/firefly_auth"
  firefly_access_key    = "YOUR_ACCESS_KEY"
  firefly_secret_key    = "YOUR_SECRET_KEY"
}

module "firefly" {
  source                = "github.com/gofireflyio/terraform-firefly-aws-onboarding?ref=v2.13.0"
  firefly_token         = module.firefly-auth.firefly_token
  is_prod               = false/true
  external_id           = "YOUR_EXTERNAL_ID"
  event_driven_regions  = ["us-east-1","us-east-2","us-west-1","us-west-2","af-south-1","ap-east-1","ap-south-1","ap-south-2","ap-southeast-1","ap-southeast-2","ap-southeast-3","ap-northeast-1","ap-northeast-2","ap-northeast-3","ca-central-1","cn-north-1","cn-northwest-1","eu-central-1","eu-west-1","eu-west-2","eu-west-3","eu-south-1","eu-south-2","eu-north-1","me-south-1","me-central-1","sa-east-1","il-central-1"]
  bulk_onboarding       = true
  // cloudformation region
  region                = "us-east-1"
  org_ou_ids             = ["ou-...", "ou-..."]
}
```

### Single Account Installation 

```hcl-terraform
provider "aws" {
    region     =  "us-east-1"
}


module "firefly_auth" {
  source = "github.com/gofireflyio/terraform-firefly-aws-onboarding?ref=v2.13.0/modules/firefly_auth"
  firefly_access_key    = "YOUR_ACCESS_KEY"
  firefly_secret_key    = "YOUR_SECRET_KEY"
}

module "firefly-read-only" {
  source              = "github.com/gofireflyio/terraform-firefly-aws-onboarding?ref=v2.13.0"
  firefly_token         = module.firefly_auth.firefly_token
  role_external_id    = "YOUR_EXTERNAL_ID"
  is_prod               = false/true
  event_driven_regions = ["us-east-1","us-east-2","us-west-1","us-west-2","af-south-1","ap-east-1","ap-south-1","ap-southeast-1","ap-southeast-2","ap-northeast-1","ap-northeast-2","ap-northeast-3","ca-central-1","cn-north-1","cn-northwest-1","eu-central-1","eu-west-1","eu-west-2","eu-west-3","eu-south-1","eu-north-1","me-south-1","sa-east-1"]
}
```

### Upgrading to from v1.y.z to v2.y.z
Use of `devops-rob/terracurl` provider is removed in favour of official `hashicorp/http`
Prior to upgrading it is required to remove the deprecated resources from the state eg:
```
terraform state list | grep terracurl_request

module.firefly.module.firefly_aws_integration[0].terracurl_request.firefly_aws_integration_request
```
```
terraform state rm "module.firefly.module.firefly_aws_integration[0].terracurl_request.firefly_aws_integration_request"

Removed module.firefly.module.firefly_aws_integration[0].terracurl_request.firefly_aws_integration_request
Successfully removed 1 resource instance(s).
```


### Optional
You can optionally add tags to each relevant resource:
```
tags = {
  project: "zeus"
}
```

You can optionally add a prefix to all created resource:
```
resource_prefix = "prod-"
```
