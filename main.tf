
# Module to deploy basic networking 
module "vpc-dev" {
  # source              = "../../../modules/aws_network"
  source              = "git@github.com:SwethaSridhar31/aws-network-webserver.git"
  env                 = "dev"
  vpc_cidr            = var.vpc_cidr
  private_cidr_blocks = var.public_subnet_cidrs
  prefix              = var.prefix
  default_tags        = var.default_tags
}