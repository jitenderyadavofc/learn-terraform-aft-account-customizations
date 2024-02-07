data "aws_vpc" "data-vpc" {
     cidr_block = var.vpc_cidr
  
}

resource "aws_subnet" "aws-subnet" {
   cidr_block = var.cidr_block
   vpc_id = data.aws_vpc.data-vpc.id


     tags= {
      for key1,value1 in var.tag_names:  
        key1=>value1
     }

}
