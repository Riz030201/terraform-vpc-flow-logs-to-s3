
# VPC Flow Logs to S3 Module

This module creates AWS VPC Flow Logs and stores them in an S3 bucket.

## Inputs

- `vpc_id`: VPC ID
- `s3_bucket_arn`: ARN of the S3 bucket
- `iam_role_arn`: IAM role with permissions to write to the S3 bucket
- `environment`: Environment tag (default: "dev")

## Outputs

- `flow_log_id`: ID of the VPC Flow Log
