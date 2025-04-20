
resource "aws_flow_log" "vpc_flow_log" {
  vpc_id              = var.vpc_id  # Use vpc_id instead of resource_id
  traffic_type        = "ALL"
  log_destination     = var.s3_bucket_arn
  log_destination_type = "s3"

  # DeliverLogsPermissionArn is not needed for S3 delivery
  # iam_role_arn = var.iam_role_arn // This is only needed for CloudWatch Logs
}