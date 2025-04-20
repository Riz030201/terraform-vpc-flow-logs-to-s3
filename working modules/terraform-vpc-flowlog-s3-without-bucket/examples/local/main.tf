
module "vpc_flow_logs" {
  source         = "../../modules/vpc-flow-logs"
  vpc_id         = var.vpc_id
  s3_bucket_arn  = var.s3_bucket_arn
}