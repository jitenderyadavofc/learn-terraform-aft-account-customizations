
vpc = {

  vpc1 = { name = "vpc01", cidr_block = "10.1.0.0/16", env = "dev" }
  vpc2 = { name = "vpc02", cidr_block = "10.2.0.0/16", env = "dev" }
  vpc3 = { name = "vpc03", cidr_block = "10.8.0.0/16", env = "dev" }
}


subnets = {
  subnet1 = { vpc_name = "vpc1", cidr_block = "10.1.1.0/24", env = "dev" }
  subnet2 = { vpc_name = "vpc2", cidr_block = "10.2.1.0/24", env = "dev" }
  subnet3 = { vpc_name = "vpc1", cidr_block = "10.1.2.0/24", env = "dev" }
  subnet4 = { vpc_name = "vpc1", cidr_block = "10.1.3.0/24", env = "dev" }
  subnet5 = { vpc_name = "vpc3", cidr_block = "10.3.1.0/24", env = "dev" }
  subnet6 = { vpc_name = "vpc2", cidr_block = "10.2.2.0/24", env = "dev" }
  subnet7 = { vpc_name = "vpc2", cidr_block = "10.2.3.0/24", env = "dev" }
  subnet8 = { vpc_name = "vpc3", cidr_block = "10.3.2.0/24", env = "dev" }
  subnet9 = { vpc_name = "vpc3", cidr_block = "10.3.3.0/24", env = "dev" }
}

tags = {
  Application = "pwc-lennar", Environment = "dev", CostCenter="100"
}

peerings = {
  peer1 = { req_vpc = "vpc1", peer_vpc = "vpc2" }
  peer2 = { req_vpc = "vpc3", peer_vpc = "vpc2" }
}

transit_gateways = {
  tg1 = { name = "tg-01", description = "transit gateway 01 " }
  tg2 = { name = "tg-02", description = "transit gateway 02 " }
}

tg_attachments = {
  tga1 = { tg_name = "tg1", vpc_name = "vpc1", subnets = ["subnet1"] }

}

