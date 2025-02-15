terraform {
backend "s3" {
    bucket         = "murugakadavule"  # Name of the S3 bucket where the state will be stored.
    region         =  "us-east-1"
    key            = "dev/terraform.tfstate"
    dynamodb_table = "terraform-state-lock-dynamo"
}
}