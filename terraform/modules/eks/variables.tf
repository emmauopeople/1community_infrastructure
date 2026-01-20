variable "name" {
  type        = string
  description = "Name prefix"
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name"
}

variable "kubernetes_version" {
  type        = string
  description = "EKS Kubernetes version"
  default     = "1.29"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "Private subnet IDs for cluster and nodes"
}

variable "endpoint_private_access" {
  type        = bool
  default     = true
}

variable "endpoint_public_access" {
  type        = bool
  default     = true
}

variable "public_access_cidrs" {
  type        = list(string)
  description = "CIDRs allowed to reach the public Kubernetes API endpoint"
}

variable "node_instance_types" {
  type        = list(string)
  default     = ["t3.large"]
}

variable "node_disk_size" {
  type        = number
  default     = 50
}

variable "node_min_size" {
  type        = number
  default     = 1
}

variable "node_desired_size" {
  type        = number
  default     = 1
}

variable "node_max_size" {
  type        = number
  default     = 3
}

variable "tags" {
  type        = map(string)
  default     = {}
}
