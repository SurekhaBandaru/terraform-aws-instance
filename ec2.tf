resource "aws_instance" "this"{ #this-- commonly used instance 
    ami                      = var.ami_id
    instance_type            = var.instance_type 
    vpc_security_group_ids   = var.sg_ids
    tags                     = var.tags
    

}