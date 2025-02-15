resource "aws_instance" "test"{
  ami           = "ami-0453ec754f44f9a4a"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  key_name = "virginia_key"
  subnet_id = "subnet-0217892e62ccd7ddf"

}

resource "aws_s3_bucket" "example" {
  bucket = "murugakadavule"
  
}


resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}