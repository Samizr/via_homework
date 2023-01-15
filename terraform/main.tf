// Local variable section containing common cross-module variables
locals {
  project_name = "via"
  common_tags = {
    Terraform = "true"
    Environment = local.project_name
  }
  availability_zone = "eu-central-1a"
}

module "compute" {
  source = "./compute"
  project_name = local.project_name
  common_tags = local.common_tags

  vpc_public_subnets = module.network.vpc_public_subnets
  vpc_global_sg = module.network.vpc_global_sg
}

module "data" {
  source = "./data"
  project_name = local.project_name
  common_tags = local.common_tags
  availability_zone = local.availability_zone

  vpc_private_subnets = module.network.vpc_private_subnets
  vpc_global_sg = module.network.vpc_global_sg
}

module "network" {
  source = "./network"
  project_name = local.project_name
  common_tags = local.common_tags
  availability_zone = local.availability_zone

}

output "rds_password" {
  value = module.data.rds_password
  sensitive = true
}