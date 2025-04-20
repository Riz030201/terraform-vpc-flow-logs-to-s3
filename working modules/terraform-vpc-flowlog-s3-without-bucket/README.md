
# Terraform VPC Flow Logs to S3

This repository contains a Terraform module that creates VPC flow logs and publishes them to an S3 bucket.  
Designed for real-time consumption by log analytics tools such as Splunk.

## Module Location

- **Module Path**: `modules/vpc-flow-logs`
- **Example Path**: `examples/local`

## Usage Example

```hcl
module "vpc_flow_logs" {
  source         = "git::https://github.com/YOUR_ORG/terraform-vpc-flowlog-s3.git//modules/vpc-flow-logs"
  vpc_id         = "vpc-0123456789abcdef0"
  s3_bucket_arn  = "arn:aws:s3:::your-s3-bucket-name"
  iam_role_arn   = "arn:aws:iam::123456789012:role/FlowLogS3WriteRole"
  environment    = "prod"
}
```

## Example

See [examples/local](examples/local) for how to use this module.
