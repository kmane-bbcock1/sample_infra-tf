variable "key_name" {
    description = "Name of the SSH keypair to use in AWS."
      default = "aws-ssh-key"
}

variable "key_file_name" {
    description = "Key Pair FileName used to login to the box"
}

variable "subnet_id" {
    description = "Subnet ID to use in VPC"
}

variable "aws_region" {
    description = "AWS region to launch servers."
    default = "us-west-2"
}

variable "aws_access_key" {
    decscription = "AWS Access Key"
}

variable "aws_secret_key" {
    description = "AWS Secret Key"
}

variable "instance_type" {
    description = "Instance type"
}

variable "instance_name" {
    description = "Instance Name"
}

# Ubuntu Precise 12.04 LTS (x64)
variable "aws_amis" {
  default = {
    eu-west-1 = "ami-b1cf19c6"
    us-east-1 = "ami-de7ab6b6"
    us-west-1 = "ami-3f75767a"
    us-west-2 = "ami-152bc275"
  }
}