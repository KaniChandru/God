resource "aws_instance" "kk" {
     ami = "ami-0c614dee691cbbf37"
    instance_type = "t2.micro"
    key_name = "virginia_key"
    tags = {
      Name = "ck"
    }
}

  resource "aws_s3_bucket" "juckoosi" {
    bucket = "sjnjkkjb" 
}

#if we want to create or destroy specific target resources, then we can go for it.
#terraform apply --target=aws_s3_bucket.juckoosi
#terraform destroy --target=aws_s3_bucket.jukoosi