Additional infrastructure for Keycloak.

Example usage:
 - `make ENV=dev plan`: get the Terraform plan for current changes
 - `make ENV=staging apply`: apply a Terraform command
 - `make readme`: create this README (requires [terraform-docs](https://github.com/terraform-docs/terraform-docs))

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.13.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_keycloak_db"></a> [keycloak\_db](#module\_keycloak\_db) | github.com/department-of-veterans-affairs/terraform-aws-rds-eks | v1.2.4 |
| <a name="module_keycloak_next_db"></a> [keycloak\_next\_db](#module\_keycloak\_next\_db) | github.com/department-of-veterans-affairs/terraform-aws-rds-eks | v1.2.4 |

## Resources

| Name | Type |
|------|------|
| [aws_security_group.eks_worker_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/security_group) | data source |
| [aws_subnets.subnet_ids](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets) | data source |
| [aws_vpc.selected](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_base_tags"></a> [base\_tags](#input\_base\_tags) | n/a | `map(string)` | n/a | yes |
| <a name="input_create_next_db"></a> [create\_next\_db](#input\_create\_next\_db) | If a 'keycloak-next' db should be created | `bool` | `false` | no |
| <a name="input_db_multi_az"></a> [db\_multi\_az](#input\_db\_multi\_az) | If RDS database should be multi availability zone | `bool` | `false` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region to use | `string` | `"us-gov-west-1"` | no |

## Outputs

No outputs.
