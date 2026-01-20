variable "name" {
  type    = string
  default = "1community"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "cluster_name" {
  type    = string
  default = "1community-eks-dev"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "az_count" {
  type    = number
  default = 2
}

variable "single_nat_gateway" {
  type    = bool
  default = false
}

variable "tags" {
  type = map(string)
  default = {
    Environment = "dev"
    ManagedBy   = "terraform"
    Repo        = "1community_infrastructure"
  }
}

variable "kubernetes_version" {
  type    = string
  default = "1.29"
}

# IMPORTANT:
# Default is VPC CIDR to keep the public endpoint restricted (clean scans).
# When you want kubectl from home, set this to ["<YOUR_PUBLIC_IP>/32"].
variable "public_access_cidrs" {
  type    = list(string)
  default =  ["174.67.8.158"]
}

variable "node_instance_types" {
  type    = list(string)
  default = ["t3.large"]
}
