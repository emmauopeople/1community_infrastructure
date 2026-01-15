terraform {
  backend "s3" {
    bucket         = "1community-tfstate-302530480617-us-east-1"
    key            = "envs/prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "1community-terraform-locks"
    encrypt        = true
  }
}
