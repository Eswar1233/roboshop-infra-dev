module "vpc" {
  source = "git::https://github.com/Eswar1233/terraform-aws-vpc-platform.git?ref=main"
  project = var.project
  environment = var.environment
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  database_subnet_cidrs = var.database_subnet_cidrs

  is_peering_required = true
}

# this is for testing
# output "vpc_id" {
#   value = module.vpc.vpc_id
# }

# output "vpc_ids" {
#   value = module.vpc.public_subnet_ids
# }