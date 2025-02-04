resource "aws_instance" "prod" {

  ami = "ami-0453ec754f44f9a4a"
  instance_type = "t2.micro"
  key_name = "virginia_key"
}


resource "aws_s3_bucket" "example" {
  bucket = "Terraform-CK"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}