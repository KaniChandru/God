output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.test.id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.test.public_ip
}

output "private_ip" {
  description = "The private IP address of the EC2 instance"
  value       = aws_instance.test.private_ip
}

output "availability_zone" {
  description = "The availability zone of the EC2 instance"
  value       = aws_instance.test.availability_zone
}

output "instance_state" {
  description = "The current state of the EC2 instance"
  value       = aws_instance.test.instance_state
}

output "instance_arn" {
  description = "The ARN of the EC2 instance"
  value       = aws_instance.test.arn
}

output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.example.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.example.arn
}

output "bucket_region" {
  description = "The region where the S3 bucket is created"
  value       = aws_s3_bucket.example.region
}

output "bucket_domain_name" {
  description = "The DNS domain name of the S3 bucket"
  value       = aws_s3_bucket.example.bucket_domain_name
}
