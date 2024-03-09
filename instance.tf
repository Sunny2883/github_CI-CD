
provider "aws" {
    access_key = "${var.AWS_SECRET_KEY_ACCESS}"
    secret_key = "${var.AWS_SECRET_KEY_ID}"
    
}

resource "aws_instance" "git_instance" {
    ami = var.ami_id
    count = var.number_of_instances
    instance_type = var.instance_type
    key_name = "${aws_key_pair.key-tf.key_name}"
    associate_public_ip_address = true

      tags = {
        Name=var.instance_name
    }

      user_data = <<EOF
#!bin/bash
yum -y update
yum install -y docker
systemctl start docker


    EOF
} 