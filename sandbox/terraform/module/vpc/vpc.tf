data "aws_vpc_ipam_pool" "infra" {
  filter {
    name   = "description"
    values = ["*Sanbox*"]
  }

  filter {
    name   = "address-family"
    values = ["ipv4"]
  }
}

locals {
  common_tags = merge(
    var.common_tags,
    {
      "Name" = var.vpc_name 
      "Application Name" = "aws-lensandboxvpcp01"
    }
  )
}

resource "aws_vpc" "main" {

  ipv4_ipam_pool_id                = data.aws_vpc_ipam_pool.infra.id
  ipv4_netmask_length              = var.vpc_ipv4_netmask_length
  
  enable_dns_hostnames = var.vpc_enable_dns_hostnames
  enable_dns_support   = var.vpc_enable_dns_support
  instance_tenancy     = var.vpc_instance_tenancy

  tags = { 

  }
}