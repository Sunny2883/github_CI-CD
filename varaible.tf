/* variable "access_key" {
        description = "Access key to AWS console"
}
variable "secret_key" {
        description = "Secret key to AWS console"
}
*/

variable "instance_name" {
        description = "Name of the instance to be created"
        default = "InstanceForCICD"
}

variable "instance_type" {
        default = "t2.micro"
}


variable "ami_id" {
        description = "The AMI to use"
       
}

variable "number_of_instances" {
        description = "number of instances to be created"
        default = 1
}


variable "ami_key_pair_name" {
        default = "my-key"
        type = string
}


variable "security_group_name" {
  description = "name of the srcurity group"
  type = string
  
}

variable "VPC_id" {
  description = "VPC_id"
  type = string
  
}