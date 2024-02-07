module "aws-vpc-mod" {
  source     = "../modules/vpc"
  
  tag_names  = var.tags
  for_each   = var.vpc
  cidr_block = each.value.cidr_block
  name       = each.value.name
  env        = each.value.env


}
