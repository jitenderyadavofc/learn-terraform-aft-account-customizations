module "vpc" {
  source = "./module/vpc"
  common_tags = var.tags
  vpc_name = "len-sandbox-${var.accountName}-vpc-01"
}