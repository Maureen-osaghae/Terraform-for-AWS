provider "aws" {
    region = "us-west-2"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0b6d6dacf350ebc82"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-03ff6002f91b23de2"
}