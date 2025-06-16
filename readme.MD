    #Note
    This is terrafrm module to create infra

    # AWS Instance
    You can create EC2 instance in joindevops (any company name) using this module

    ## Inputs

    *   ami_id (Optional) - AMI id that needs to be used by instance. Default is ami-09c813fb71547fc4f
      type - string
    
    *   instance_type (Optional) - Instance type to create an instance/useed by an instance. Default instance type is 
        t3.micro and allowed are t3.micro, t3.small, t3.medium
        type - string
    *   sg_ids (Required) - A list of security group ids to attach to an instance
    *   tags (Required) - A map of tag info associated with an instance.

    ## Outputs
    * public_ip - Public Ip of the created instance
    * private_ip - Private Ip of the created instance
    * instance_id - Instance Id if the created instance