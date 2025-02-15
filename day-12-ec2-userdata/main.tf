resource "aws_instance" "name" {
  ami           = var.ami
  instance_type = var.ins
  subnet_id     = "subnet-0217892e62ccd7ddf"  
  user_data = file("test.sh")

}
