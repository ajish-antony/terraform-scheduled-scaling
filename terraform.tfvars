################################################
        # Provider Details & Project Name
#################################################
region     = "us-east-1"

access_key = "Mention-Your-Access-Key"

secret_key = "Mention-Your-Secret-Key"

project    = "myproject"

#################################################
        # VPC Requiremnet
#################################################

vpc_cidr    = "172.18.0.0/16"

subnetcidr  = "3"

#################################################
        # EC2 Requirement 
#################################################

ami         = "ami-0747bdcabd34c712a"

type        = "t2.micro"

vol_size    = "8"

key         = "work.pem"

#################################################
        # ASG Requirement
#################################################

min         = "2"
max         = "2"
desired     = "2"