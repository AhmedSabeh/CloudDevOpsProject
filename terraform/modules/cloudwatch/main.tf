resource "aws_cloudwatch_log_group" "dev_logs" {
  name              = "/cloud-devops/logs"
  retention_in_days = 1
}

