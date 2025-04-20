variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "s3_bucket_arn" {
  type        = string
  description = "S3 Bucket ARN"
}

# Remove this variable if it exists
# variable "iam_role_arn" {
#   type        = string
#   description = "IAM Role ARN for CloudWatch Logs"
# }
