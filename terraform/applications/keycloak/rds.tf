# module "keycloak_db" {
#   source                     = "github.com/department-of-veterans-affairs/terraform-aws-rds-eks?ref=v1.2.4"
#   app                        = local.app
#   eks_worker_sg              = data.aws_security_group.eks_worker_sg.id
#   engine                     = "postgres"
#   engine_version             = "12.4"
#   env                        = local.env
#   rds_instance_name          = "${local.prefix}-${local.app}-${local.env}"
#   security_group_description = "Security group that controls access to the Keycloak RDS Database"
#   vpc_id                     = data.aws_vpc.selected.id
#   vpc_subnet_ids             = data.aws_subnets.subnet_ids.ids
#   multi_az                   = var.db_multi_az
#   base_tags                  = var.base_tags
# }

# module "keycloak_next_db" {
#   count                        = var.create_next_db ? 1 : 0
#   source                       = "github.com/department-of-veterans-affairs/terraform-aws-rds-eks?ref=v1.2.4"
#   app                          = local.app
#   eks_worker_sg                = data.aws_security_group.eks_worker_sg.id
#   engine                       = "postgres"
#   engine_version               = "12.4"
#   env                          = local.env
#   db_password_path             = "/dsva-vagov/keycloak/${local.env}/next_db_password"
#   vpc_id                       = data.aws_vpc.selected.id
#   vpc_subnet_ids               = data.aws_subnets.subnet_ids.ids
#   rds_instance_name            = "${local.prefix}-${local.app}-next-${local.env}"
#   create_security_group        = false
#   create_subnet_group          = false
#   preconfigured_security_group = module.keycloak_db.security_group_id
#   preconfigured_subnet_group   = module.keycloak_db.subnet_group_id
#   base_tags                    = var.base_tags
# }

