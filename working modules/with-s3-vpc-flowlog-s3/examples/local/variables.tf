variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "create_s3_bucket" {
  type        = bool
  description = "Whether to create a new S3 bucket for flow logs"
  default     = false
}

variable "s3_bucket_name" {
  type        = string
  description = "Name of the S3 bucket to create (optional)"
  default     = ""
}

variable "environment" {
  type        = string
  description = "Environment tag for resources"
  default     = "dev"
}