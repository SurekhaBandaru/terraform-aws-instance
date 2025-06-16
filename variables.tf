variable "ami_id"{
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI id of ec2 instance"

}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "instance size"
    #this validatio is to avoid module consumers not to exceed t3 type more than below
    validation {
      condition = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
      error_message = "The instance type must be among t3.micro, t3.small and t3.medium"
    }
  
}

#as it is not common for all the projects, every project develops should provide
#so, it is mandatory

variable "sg_ids" {
    type=list

}

#nothing is proided here, so it is mandatory
variable "tags" {
  type = map
}