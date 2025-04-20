
output "flow_log_id" {
  description = "ID of the created VPC Flow Log"
  value       = aws_flow_log.vpc_flow_log.id
}
