# EC2 Scheduled Scaling
## (Terraform as IaC)

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)


As per the requirement, I have configured an Nginx server and along with certain other features. Here I tried to create an infrastructure for the requirement. Initially, have created a VPC with 3 public subnets. Further moves with the creation of launch configuration with 2 EC2 instances and at the same time, along with it created a security group for the ec2 instance. Also created an IAM role and attached to the newly created instances. A user-data script has been provided for the installation of Nginx with the basic "hello world" display. 

Additional requirement as  such to schedule the ec2 instance to turn off at midnight, for the same have  scheduled a cron  job in the ASG. According to the requirement, the time can be updated.  
The whole infrastructure mentioned here has been configured with Terraform as IaC which makes complex creation easier way to handle and also helps to automate the whole process.  

## Resources Created

- VPC (Public Subnet, Route Table, and IGW)
- IAM Policy
- IAM Role
- Launch Configuration
- AutoSclaing Group
- EC2 Instance
- Security Group
- Scheduled Cronjob For ASG

## Features
- Easy to use and customize. Moreover, the whole process is automated makes the job easier
- Instance Refresh enables automatic deployments of instances in Auto Scaling Groups
- VPC configuration can be deployed in any region and will be fetching the available zones in that region automatically using data source AZ.
- Every subnet CIDR block has been calculated automatically using cidrsubnet function

## User Instructions
- Clone the git repo
- Update the values of the variables as per the requirements. 
- After completing these, initialize the working directory for Terraform configuration using the below command
```sh
terraform init
```
- Validate the terraform file using the command given below.
```sh
terraform validate
```
After successful validation, plan the build architecture
```sh
terraform plan 
```
Confirm the changes and Apply the changes to the AWS architecture
```sh
terraform apply
```



### ⚙️ Connect with Me

<p align="center">
<a href="mailto:ajishantony95@gmail.com"><img src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white"/></a>
<a href="https://www.linkedin.com/in/ajish-antony/"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"/></a>
