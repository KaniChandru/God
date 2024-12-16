resource "aws_instance" "name" {
  ami           = var.ami
  instance_type = var.ins
  subnet_id     = "subnet-05e25bb9d694b078a"  
}