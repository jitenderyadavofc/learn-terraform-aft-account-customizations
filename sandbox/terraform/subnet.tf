module "aws-subnets-mod" {
  source     = "./module/subnet"
  tag_names  = var.tags
  for_each   = var.subnets
  vpc_cidr   = var.vpc[each.value.vpc_name].cidr_block
  cidr_block = each.value.cidr_block
  env        = each.value.env
  name=each.value.name

  depends_on = [module.aws-vpc-mod]
}