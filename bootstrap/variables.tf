variable state_bucket {
  type = string
}

variable admin_group_name {
  type    = string
  default = "Admin"
}

variable dynamodb_table {
  type    = string
  default = "terraform-state-lock"
}

variable region {
  type    = string
  default = "af-south-1"
}

variable users {
  type    = list(string)
  default = []
}

locals {
  create_iam = length(var.users) > 0
}