resource "aws_instance" "test"{
  ami           = "ami-0453ec754f44f9a4a"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  key_name = "virginia_key"
  subnet_id = "subnet-0217892e62ccd7ddf"
  for_each = length(var.test)

  tags = {

    Name = var.test [count.index]


  }

}

variable "test" {

type = list(string)
default = [ "dev","test, prod" ]   
}