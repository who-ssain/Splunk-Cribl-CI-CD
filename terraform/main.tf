provider "aws" {
  region = "us-east-1"
}

resource "aws_cloudwatch_log_group" "example" {
  name = "/aws/example/logs"
}

resource "aws_cloudwatch_log_subscription_filter" "example_filter" {
  name            = "cribl_filter"
  log_group_name  = aws_cloudwatch_log_group.example.name
  filter_pattern  = ""
  destination_arn = "arn:aws:lambda:us-east-1:123456789012:function:cribl-log-forwarder"
}
