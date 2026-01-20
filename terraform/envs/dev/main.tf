module "vpc" {
  source = "../../modules/vpc"

  name               = var.name
  aws_region         = var.aws_region
  vpc_cidr           = var.vpc_cidr
  az_count           = var.az_count
  cluster_name       = var.cluster_name
  single_nat_gateway = var.single_nat_gateway
  tags               = var.tags
}
