module "lambda_deploy" {
  source = "./common"

  region = var.region
  deploy_env = var.deploy_env
  app_version = var.app_version
  s3_lambda_deploy_bucket = var.s3_lambda_deploy_bucket
}