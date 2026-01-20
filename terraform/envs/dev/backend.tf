terraform {
  backend "s3" {
    bucket         = "1community-tfstate-302530480617-us-east-1"
    key            = "envs/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "1community-terraform-locks"
    encrypt        = true
    kms_key_id = "arn:aws:kms:us-east-1:302530480617:key/948cebb6-731b-493e-9212-d0005d5e951e"
  }
}
