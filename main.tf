provider "aws" {
    region = "us-west-2"
}

resource "aws_instance" "example" {
    ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (Free tier eligible)
    instance_type = "t2.micro"              # Free tier eligible instance type

    tags = {
        Name = "example-instance"
    }
}

output "instance_id" {
    value = aws_instance.example.id