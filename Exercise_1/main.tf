# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = "AKIAJBWLJMNT4HA4K4NQ"
  secret_key = "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"
  region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  count = 4
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  subnet_id = "subnet-0b45fa16190026040"
  tags={
    Name="Udacity_T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4

# resource "aws_instance" "Udacity_M4" {
#   count = 2
#   ami = "ami-0323c3dd2da7fb37d"
#   instance_type = "m4.large"
#   subnet_id = "subnet-0997d465ed8fd5403"
#   tags={
#     Name="Udacity_M4"
#   }
# }