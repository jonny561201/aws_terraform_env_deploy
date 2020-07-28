terraform {
  backend "s3" {
    bucket = "jgraf-terraform-env-example"
    key    = "statefile"
    region = "us-east-1"
  }
}