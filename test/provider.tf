terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  required_version = "1.1.5"
}

provider "aws" {
  access_key = "test"
  secret_key = "test"
  region = "ap-northeast-2"

  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
}
