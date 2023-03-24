terraform {
  backend "s3" {
    bucket         = "my-terraform-state"
    key            = "multitier-aws.tfstate"
    region         = "us-east-1"
    dynamodb_table = "my-terraform-state-lock"
  }
}
