# terraform {
#   backend "s3" {
#     bucket         = "dsva-shared-terraform-remote-state"
#     dynamodb_table = "dsva-shared-terraform-lock"
#     region         = "us-gov-west-1"
#     encrypt        = true
#   }
# }

# provider "aws" {
#   region = var.region
# }

# locals {
#   group     = var.base_tags["group"]
#   project   = var.base_tags["project"]
#   prefix    = "${local.group}-${local.project}"
#   env       = var.base_tags["environment"]
#   app       = "keycloak"
#   full_name = "${local.prefix}-${local.env}-${local.app}"
# }

# data "aws_security_group" "eks_worker_sg" {
#   name = "${local.prefix}-${local.env}-cluster-eks-worker"
# }

# data "aws_vpc" "selected" {
#   filter {
#     name   = "tag:Name"
#     values = ["${local.prefix}-${local.env}-vpc"]
#   }
# }

# data "aws_subnets" "subnet_ids" {
#   filter {
#     name   = "vpc-id"
#     values = [data.aws_vpc.selected.id]
#   }
# }

##keycloak client secret
data "aws_ssm_parameter" "client_secret" {
  count = var.pull_secret ? 1 : 0
  name  = var.client_secret_path
}