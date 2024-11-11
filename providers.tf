// us_east_1
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

// us_east_2
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

// us_west_1
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

// us_west_2
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

// af_south_1
# provider "aws" {
#   alias      = "af_south_1"
#   region     = "af-south-1"
#   profile    = var.profile
#   access_key = var.access_key
#   secret_key = var.secret_key
#   dynamic "assume_role" {
#     for_each = var.aws_assume_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn     = var.aws_assume_role_arn
#       session_name = var.session_name
#       external_id  = var.external_id == "" ? null : var.external_id
#     }
#   }
#   dynamic "assume_role_with_web_identity" {
#     for_each = var.aws_assume_web_identity_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn                = var.aws_assume_web_identity_role_arn
#       web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
#       web_identity_token_file = var.aws_assume_web_identity_role_token_file
#     }
#   }
# }

// ap_east_1
# provider "aws" {
#   alias      = "ap_east_1"
#   region     = "ap-east-1"
#   profile    = var.profile
#   access_key = var.access_key
#   secret_key = var.secret_key
#   dynamic "assume_role" {
#     for_each = var.aws_assume_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn     = var.aws_assume_role_arn
#       session_name = var.session_name
#       external_id  = var.external_id == "" ? null : var.external_id
#     }
#   }
#   dynamic "assume_role_with_web_identity" {
#     for_each = var.aws_assume_web_identity_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn                = var.aws_assume_web_identity_role_arn
#       web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
#       web_identity_token_file = var.aws_assume_web_identity_role_token_file
#     }
#   }
# }

// ap_south_1
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

// ap_south_2
# provider "aws" {
#   alias      = "ap_south_2"
#   region     = "ap-south-2"
#   profile    = var.profile
#   access_key = var.access_key
#   secret_key = var.secret_key
#   dynamic "assume_role" {
#     for_each = var.aws_assume_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn     = var.aws_assume_role_arn
#       session_name = var.session_name
#       external_id  = var.external_id == "" ? null : var.external_id
#     }
#   }
#   dynamic "assume_role_with_web_identity" {
#     for_each = var.aws_assume_web_identity_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn                = var.aws_assume_web_identity_role_arn
#       web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
#       web_identity_token_file = var.aws_assume_web_identity_role_token_file
#     }
#   }
#
# }

// ap_southeast_1
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

// ap_southeast_2
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

// ap_southeast_3
# provider "aws" {
#   alias      = "ap_southeast_3"
#   region     = "ap-southeast-3"
#   profile    = var.profile
#   access_key = var.access_key
#   secret_key = var.secret_key
#   dynamic "assume_role" {
#     for_each = var.aws_assume_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn     = var.aws_assume_role_arn
#       session_name = var.session_name
#       external_id  = var.external_id == "" ? null : var.external_id
#     }
#   }
#   dynamic "assume_role_with_web_identity" {
#     for_each = var.aws_assume_web_identity_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn                = var.aws_assume_web_identity_role_arn
#       web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
#       web_identity_token_file = var.aws_assume_web_identity_role_token_file
#     }
#   }
#
# }

// ap_northeast_1
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

// ap_northeast_2
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

// ap_northeast_3
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

// ca_central_1
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

// cn_north_1
# provider "aws" {
#   alias      = "cn_north_1"
#   region     = "cn-north-1"
#   profile    = var.profile
#   access_key = var.access_key
#   secret_key = var.secret_key
#   dynamic "assume_role" {
#     for_each = var.aws_assume_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn     = var.aws_assume_role_arn
#       session_name = var.session_name
#       external_id  = var.external_id == "" ? null : var.external_id
#     }
#   }
#   dynamic "assume_role_with_web_identity" {
#     for_each = var.aws_assume_web_identity_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn                = var.aws_assume_web_identity_role_arn
#       web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
#       web_identity_token_file = var.aws_assume_web_identity_role_token_file
#     }
#   }
#
# }

// cn_northwest_1
# provider "aws" {
#   alias      = "cn_northwest_1"
#   region     = "cn-northwest-1"
#   profile    = var.profile
#   access_key = var.access_key
#   secret_key = var.secret_key
#   dynamic "assume_role" {
#     for_each = var.aws_assume_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn     = var.aws_assume_role_arn
#       session_name = var.session_name
#       external_id  = var.external_id == "" ? null : var.external_id
#     }
#   }
#   dynamic "assume_role_with_web_identity" {
#     for_each = var.aws_assume_web_identity_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn                = var.aws_assume_web_identity_role_arn
#       web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
#       web_identity_token_file = var.aws_assume_web_identity_role_token_file
#     }
#   }
#
# }

// eu_central_1
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

// eu_west_1
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

// eu_west_2
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

// eu_west_3
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

// eu_south_1
# provider "aws" {
#   alias      = "eu_south_1"
#   region     = "eu-south-1"
#   profile    = var.profile
#   access_key = var.access_key
#   secret_key = var.secret_key
#   dynamic "assume_role" {
#     for_each = var.aws_assume_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn     = var.aws_assume_role_arn
#       session_name = var.session_name
#       external_id  = var.external_id == "" ? null : var.external_id
#     }
#   }
#   dynamic "assume_role_with_web_identity" {
#     for_each = var.aws_assume_web_identity_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn                = var.aws_assume_web_identity_role_arn
#       web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
#       web_identity_token_file = var.aws_assume_web_identity_role_token_file
#     }
#   }
#
# }

// eu_south_2
# provider "aws" {
#   alias      = "eu_south_2"
#   region     = "eu-south-2"
#   profile    = var.profile
#   access_key = var.access_key
#   secret_key = var.secret_key
#   dynamic "assume_role" {
#     for_each = var.aws_assume_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn     = var.aws_assume_role_arn
#       session_name = var.session_name
#       external_id  = var.external_id == "" ? null : var.external_id
#     }
#   }
#   dynamic "assume_role_with_web_identity" {
#     for_each = var.aws_assume_web_identity_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn                = var.aws_assume_web_identity_role_arn
#       web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
#       web_identity_token_file = var.aws_assume_web_identity_role_token_file
#     }
#   }
#
# }

// eu_north_1
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

// me_south_1
# provider "aws" {
#   alias      = "me_south_1"
#   region     = "me-south-1"
#   profile    = var.profile
#   access_key = var.access_key
#   secret_key = var.secret_key
#   dynamic "assume_role" {
#     for_each = var.aws_assume_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn     = var.aws_assume_role_arn
#       session_name = var.session_name
#       external_id  = var.external_id == "" ? null : var.external_id
#     }
#   }
#   dynamic "assume_role_with_web_identity" {
#     for_each = var.aws_assume_web_identity_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn                = var.aws_assume_web_identity_role_arn
#       web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
#       web_identity_token_file = var.aws_assume_web_identity_role_token_file
#     }
#   }
#
# }

// me_central-1
# provider "aws" {
#   alias      = "me_central_1"
#   region     = "me-central-1"
#   profile    = var.profile
#   access_key = var.access_key
#   secret_key = var.secret_key
#   dynamic "assume_role" {
#     for_each = var.aws_assume_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn     = var.aws_assume_role_arn
#       session_name = var.session_name
#       external_id  = var.external_id == "" ? null : var.external_id
#     }
#   }
#   dynamic "assume_role_with_web_identity" {
#     for_each = var.aws_assume_web_identity_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn                = var.aws_assume_web_identity_role_arn
#       web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
#       web_identity_token_file = var.aws_assume_web_identity_role_token_file
#     }
#   }
#
# }

// sa_east_1
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

// il_central_1
# provider "aws" {
#   alias      = "il_central_1"
#   region     = "il-central-1"
#   profile    = var.profile
#   access_key = var.access_key
#   secret_key = var.secret_key
#   dynamic "assume_role" {
#     for_each = var.aws_assume_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn     = var.aws_assume_role_arn
#       session_name = var.session_name
#       external_id  = var.external_id == "" ? null : var.external_id
#     }
#   }
#   dynamic "assume_role_with_web_identity" {
#     for_each = var.aws_assume_web_identity_role_arn == "" ? toset([]) : toset([0])
#     content {
#       role_arn                = var.aws_assume_web_identity_role_arn
#       web_identity_token      = var.aws_assume_web_identity_role_token == "" ? null : var.aws_assume_web_identity_role_token
#       web_identity_token_file = var.aws_assume_web_identity_role_token_file
#     }
#   }
#
# }


