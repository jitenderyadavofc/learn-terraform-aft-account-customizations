data "aws_ssm_parameter" "app_code" {
  name = "/aft/account-request/custom-fields/app_code"
}
data "aws_ssm_parameter" "budget" {
  name = "/aft/account-request/custom-fields/budget"
}

module "vpc" {
  source = "./module/vpc"
  common_tags = var.tags
  vpc_name = "len-dev-${data.aws_ssm_parameter.app_code.value}-vpc-01"
}

module "budget" {
    source = "./module/budget"
    budget = data.aws_ssm_parameter.budget
}
