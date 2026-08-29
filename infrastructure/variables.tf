variable "aws_region" {
  description = "AWS region used by the demonstration configuration"
  type        = string
  default     = "eu-central-1"
}

variable "vpc_id" {
  description = "Placeholder VPC ID used for static IaC security analysis"
  type        = string
  default     = "vpc-00000000000000000"
}