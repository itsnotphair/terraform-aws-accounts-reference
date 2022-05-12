remote_state {
  backend = "s3"

  config = {
    bucket  = "tf-state-8970762357"
    key     = "${path_relative_to_include()}/terraform.tfstate"
    region  = "af-south-1"
    encrypt = true
    acl     = "bucket-owner-full-control"
  }
}
