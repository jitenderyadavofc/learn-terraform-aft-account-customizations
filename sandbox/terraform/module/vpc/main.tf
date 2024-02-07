resource "aws_vpc" "aws-vpc" {
     cidr_block = var.cidr_block
  
    tags= {
      for key1,value1 in var.tag_names:  
        key1=>value1
    }


}
