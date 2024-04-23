terraform {
    backend s3{
        bucket = 
        key = 
        region = 
    }
}

provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "test-instance" {
    ami = "ami-id"
    instance_type = "t2.micro"
    availability_zone = "ap-south-1a"
    key_name = "pem1"
    aws_security_group
    tags {
        name = "test"
        location = "mumbai"
    }
}

resource "aws_eip" "test-instance"{
    instance = "${aws_instance.test-instance.id}"
}