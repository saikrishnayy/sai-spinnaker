provider "aws" {
  region = "us-west-1"
}

data "aws_s3_buckets" "all_buckets" {}

output "bucket_names" {
  value = [for bucket in data.aws_s3_buckets.all_buckets.buckets : bucket.id]
}