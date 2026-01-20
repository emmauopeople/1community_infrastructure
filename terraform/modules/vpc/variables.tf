variable "name" {
  type        = string
  description = "Name prefix for VPC resources"
}

variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "az_count" {
  type        = number
  description = "Number of AZs to use"
  default     = 2
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name used for subnet tags"
}

variable "single_nat_gateway" {
  type        = bool
  description = "If true, use a single NAT gateway (cheaper, less HA). Production-grade default is false."
  default     = false
}

variable "enable_flow_logs" {
  type        = bool
  description = "Enable VPC Flow Logs to CloudWatch"
  default     = true
}

variable "enable_vpc_endpoints" {
  type        = bool
  description = "Enable VPC endpoints for private networking"
  default     = true
}

variable "tags" {
  type        = map(string)
  description = "Additional tags"
  default     = {}
}
