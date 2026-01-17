variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "project" {
  type        = string
  description = "Project name used for naming resources"
  default     = "1community"
}

variable "github_repo_full_name" {
  type        = string
  description = "GitHub repo in the form OWNER/REPO (e.g, emmauopeople/1community_infrastructure)"
}

variable "github_repo_oidc_name" {
  type        = string
  description = "GitHub repo in the form OWNER/REPO (e.g, emmauopeople/1community_infrastructure)"
}