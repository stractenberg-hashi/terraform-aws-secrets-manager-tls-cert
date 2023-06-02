<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0.0 |
| <a name="provider_local"></a> [local](#provider\_local) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret.vault-tls-cert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.version](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [local_file.ca_certificate](https://registry.terraform.io/providers/hashicorp/local/latest/docs/data-sources/file) | data source |
| [local_file.certificate](https://registry.terraform.io/providers/hashicorp/local/latest/docs/data-sources/file) | data source |
| [local_file.private_key](https://registry.terraform.io/providers/hashicorp/local/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ca_certificate_file"></a> [ca\_certificate\_file](#input\_ca\_certificate\_file) | The relative path and filename of the root CA certificate | `string` | `"./tls_ca.crt"` | no |
| <a name="input_certificate_file"></a> [certificate\_file](#input\_certificate\_file) | The relative path and filename of the TLS certificate | `string` | `"./tls_cert.crt"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment this secret is for | `string` | `"development"` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | The team that is managing this secret | `string` | `"DevOps"` | no |
| <a name="input_private_key_file"></a> [private\_key\_file](#input\_private\_key\_file) | The relative path and filename of the TLS private key | `string` | `"./tls_cert.key"` | no |
| <a name="input_sm_description"></a> [sm\_description](#input\_sm\_description) | The description of the Secrets Manager Secret | `string` | `"TLS certificate files necessary for Vault servers"` | no |
| <a name="input_sm_name"></a> [sm\_name](#input\_sm\_name) | The name of the Secrets Manager Secret | `string` | `"Vault_TLS_Certificate"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->