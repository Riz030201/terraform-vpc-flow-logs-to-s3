
module "vpc_flow_logs" {
  source            = "../../modules/vpc-flow-logs"
  vpc_id            = "vpc-00f3c3970ec075577"
  create_s3_bucket  = true
  s3_bucket_name    = "rizwan-custom-flow-logs-bucket"
  environment       = "prod"
}