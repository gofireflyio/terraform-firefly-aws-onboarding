provider "aws" {
  alias      = "ap_northeast_1"
  region     = "ap-northeast-1"
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

provider "aws" {
  alias      = "ap_northeast_2"
  region     = "ap-northeast-2"
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

provider "aws" {
  alias      = "ap_northeast_3"
  region     = "ap-northeast-3"
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

provider "aws" {
  alias      = "ap_south_1"
  region     = "ap-south-1"
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

provider "aws" {
  alias      = "ap_southeast_1"
  region     = "ap-southeast-1"
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

provider "aws" {
  alias      = "ap_southeast_2"
  region     = "ap-southeast-2"
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

provider "aws" {
  alias      = "ca_central_1"
  region     = "ca-central-1"
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

provider "aws" {
  alias      = "eu_central_1"
  region     = "eu-central-1"
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

provider "aws" {
  alias      = "eu_north_1"
  region     = "eu-north-1"
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

provider "aws" {
  alias      = "eu_west_1"
  region     = "eu-west-1"
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

provider "aws" {
  alias      = "eu_west_2"
  region     = "eu-west-2"
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

provider "aws" {
  alias      = "eu_west_3"
  region     = "eu-west-3"
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

provider "aws" {
  alias      = "sa_east_1"
  region     = "sa-east-1"
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

provider "aws" {
  alias      = "us_east_1"
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

provider "aws" {
  alias      = "us_east_2"
  region     = "us-east-2"
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

provider "aws" {
  alias      = "us_west_1"
  region     = "us-west-1"
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

provider "aws" {
  alias      = "us_west_2"
  region     = "us-west-2"
  profile    = var.profile
  access_key = var.access_key
  secret_key = var.secret_key
  dynamic "assume_role" {
    for_each = var.aws_assume_role_arn == "" ? toset([]) : toset([0])
    content {
      role_arn     = var.aws_assume_role_arn
      session_name = var.session_name
      external_id  = var.external_id == "" ? "nothing" : var.external_id
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
