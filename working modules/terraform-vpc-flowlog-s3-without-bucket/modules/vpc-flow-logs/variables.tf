
variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "s3_bucket_arn" {
  type        = string
  description = "S3 Bucket ARN"
}

# Remove iam_role_arn if not needed for CloudWatch Logs
# variable "iam_role_arn" {
#   type        = string
#   description = "IAM Role ARN for CloudWatch Logs"
# }