resource "aws_s3_bucket" "flow_logs_bucket" {
  count = var.create_s3_bucket ? 1 : 0

  bucket = var.s3_bucket_name != "" ? var.s3_bucket_name : "${var.vpc_id}-flow-logs-bucket"

  tags = {
    Name        = "Flow Logs Bucket"
    Environment = var.environment
  }
}

resource "aws_flow_log" "vpc_flow_log" {
  vpc_id              = var.vpc_id
  traffic_type        = "ALL"
  log_destination     = var.create_s3_bucket ? aws_s3_bucket.flow_logs_bucket[0].arn : var.s3_bucket_arn
  log_destination_type = "s3"
}