module "ec2_instance" {
source = "terraform-aws-modules/ec2-instance/aws"
name = "single-instance"
instance_type = "t2.micro"
key_name = "virginia_key"
monitoring = true
#vpc_security_group_ids = ["sg-12345678"]
subnet_id = "subnet-0217892e62ccd7ddf"
#tags = {
#Terraform = "true"
#Environment = "dev"
}

