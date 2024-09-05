module "iac_events_ap_northeast_1" {
  count        = lookup(var.buckets_by_region, "ap-northeast-1", []) != [] ? 1 : 0
  source       = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "ap-northeast-1", [])
  sns_arn      = replace(var.iac_events_sns, "us-east-1", "ap-northeast-1")
  region       = "ap-northeast-1"
  providers = {
    aws = aws.ap_northeast_1
  }
}

module "iac_events_ap_northeast_2" {
  count        = lookup(var.buckets_by_region, "ap-northeast-2", []) != [] ? 1 : 0
  source       = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "ap-northeast-2", [])
  sns_arn      = replace(var.iac_events_sns, "us-east-1", "ap-northeast-2")
  region       = "ap-northeast-2"
  providers = {
    aws = aws.ap_northeast_2
  }
}


module "iac_events_ap_northeast_3" {
  count        = lookup(var.buckets_by_region, "ap-northeast-3", []) != [] ? 1 : 0
  source       = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "ap-northeast-3", [])
  sns_arn      = replace(var.iac_events_sns, "us-east-1", "ap-northeast-3")
  region       = "ap-northeast-3"
  providers = {
    aws = aws.ap_northeast_3
  }
}

module "iac_events_ap_south_1" {
  count        = lookup(var.buckets_by_region, "ap-south-1", []) != [] ? 1 : 0
  source       = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "ap-south-1", [])
  sns_arn      = replace(var.iac_events_sns, "us-east-1", "ap-south-1")
  region       = "ap-south-1"
  providers = {
    aws = aws.ap_south_1
  }
}

module "iac_events_ap_southeast_1" {
  count        = lookup(var.buckets_by_region, "ap-southeast-1", []) != [] ? 1 : 0
  source       = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "ap-southeast-1", [])
  sns_arn      = replace(var.iac_events_sns, "us-east-1", "ap-southeast-1")
  region       = "ap-southeast-1"
  providers = {
    aws = aws.ap_southeast_1
  }
}

module "iac_events_ap_southeast_2" {
  count        = lookup(var.buckets_by_region, "ap-southeast-2", []) != [] ? 1 : 0
  source       = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "ap-southeast-2", [])
  sns_arn      = replace(var.iac_events_sns, "us-east-1", "ap-southeast-2")
  region       = "ap-southeast-2"
  providers = {
    aws = aws.ap_southeast_2
  }
}

module "iac_events_ca_central_1" {
  count        = lookup(var.buckets_by_region, "ca-central-1", []) != [] ? 1 : 0
  source       = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "ca-central-1", [])
  sns_arn      = replace(var.iac_events_sns, "us-east-1", "ca-central-1")
  region       = "ca-central-1"
  providers = {
    aws = aws.ca_central_1
  }
}

module "iac_events_eu_central_1" {
  count        = lookup(var.buckets_by_region, "eu-central-1", []) != [] ? 1 : 0
  source       = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "eu-central-1", [])
  sns_arn      = replace(var.iac_events_sns, "us-east-1", "eu-central-1")
  region       = "eu-central-1"
  providers = {
    aws = aws.eu_central_1
  }
}

module "iac_events_eu_north_1" {
  count        = lookup(var.buckets_by_region, "eu-north-1", []) != [] ? 1 : 0
  source       = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "eu-north-1", [])
  sns_arn      = replace(var.iac_events_sns, "us-east-1", "eu-north-1")
  region       = "eu-north-1"
  providers = {
    aws = aws.eu_north_1
  }
}

module "iac_events_eu_west_1" {
  count        = lookup(var.buckets_by_region, "eu-west-1", []) != [] ? 1 : 0
  source       = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "eu-west-1", [])
  sns_arn      = replace(var.iac_events_sns, "us-east-1", "eu-west-1")
  region       = "eu-west-1"
  providers = {
    aws = aws.eu_west_1
  }
}

module "iac_events_eu_west_2" {
  count        = lookup(var.buckets_by_region, "eu-west-2", []) != [] ? 1 : 0
  source       = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "eu-west-2", [])
  sns_arn      = replace(var.iac_events_sns, "us-east-1", "eu-west-2")
  region       = "eu-west-2"
  providers = {
    aws = aws.eu_west_2
  }
}

module "iac_events_eu_west_3" {
  count        = lookup(var.buckets_by_region, "eu-west-3", []) != [] ? 1 : 0
  source       = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "eu-west-3", [])
  sns_arn      = replace(var.iac_events_sns, "us-east-1", "eu-west-3")
  region       = "eu-west-3"
  providers = {
    aws = aws.eu_west_3
  }
}

module "iac_events_sa_east_1" {
  count        = lookup(var.buckets_by_region, "sa-east-1", []) != [] ? 1 : 0
  source       = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "sa-east-1", [])
  sns_arn      = replace(var.iac_events_sns, "us-east-1", "sa-east-1")
  region       = "sa-east-1"
  providers = {
    aws = aws.sa_east_1
  }
}

module "iac_events_us_east_1" {
  count        = lookup(var.buckets_by_region, "us-east-1", []) != [] ? 1 : 0
  source       = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "us-east-1", [])
  sns_arn      = var.iac_events_sns
  region       = "us-east-1"
  providers = {
    aws = aws.us_east_1
  }
}

module "iac_events_us_east_2" {
  count        = lookup(var.buckets_by_region, "us-east-2", []) != [] ? 1 : 0
  source       = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "us-east-2", [])
  sns_arn      = replace(var.iac_events_sns, "us-east-1", "us-east-2")
  region       = "us-east-2"
  providers = {
    aws = aws.us_east_2
  }
}

module "iac_events_us_west_1" {
  count        = lookup(var.buckets_by_region, "us-west-1", []) != [] ? 1 : 0
  source       = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "us-west-1", [])
  sns_arn      = replace(var.iac_events_sns, "us-east-1", "us-west-1")
  region       = "us-west-1"
  providers = {
    aws = aws.us_west_1
  }
}

module "iac_events_us_west_2" {
  count        = lookup(var.buckets_by_region, "us-west-2", []) != [] ? 1 : 0
  source       = "./modules/s3_iac_events"
  bucket_names = lookup(var.buckets_by_region, "us-west-2", [])
  sns_arn      = replace(var.iac_events_sns, "us-east-1", "us-west-2")
  region       = "us-west-2"
  providers = {
    aws = aws.us_west_2
  }
}
