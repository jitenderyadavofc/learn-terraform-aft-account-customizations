resource "aws_vpc" "aws-vpc" {
     cidr_block = var.cidr_block
  
    tags = merge( 
     {"Name"=var.name},
    {
     
     for key1,value1 in var.tag_names:  
        key1=>value1
        
        })
   
}

data "aws_vpc_ipam_pool" "test" {
  filter {
    name   = "description"
    values = ["*app1*"]
  }
 
  filter {
    name   = "address-family"
    values = ["ipv4"]
  }
}
 
resource "aws_vpc" "test" {
  ipv4_ipam_pool_id   = data.aws_vpc_ipam_pool.test.id
  ipv4_netmask_length = 18
}
