resource "aws_instance" "kk" {
     ami = "ami-0c614dee691cbbf37"
    instance_type = "t2.micro"
    key_name = "virginia_key"
    tags = {
      Name = "ck"
    }
}

  
