provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Provisioned = "Terraform"
      Environment = var.environment
    }
  }
}

data "local_file" "certificate" {
  filename = var.certificate_file
}
data "local_file" "ca_certificate" {
  filename = var.ca_certificate_file
}
data "local_file" "private_key" {
  filename = var.private_key_file
}

locals {
  vault-tls-cert = {
    certificate    = data.local_file.certificate.content
    ca_certificate = data.local_file.ca_certificate.content
    private_key    = data.local_file.private_key.content
  }
}

resource "aws_secretsmanager_secret" "vault-tls-cert" {
  name        = var.sm_name
  description = var.sm_description
  tags = {
    ManagedBy = var.managed_by
  }
}

resource "aws_secretsmanager_secret_version" "version" {
  secret_id     = aws_secretsmanager_secret.vault-tls-cert.id
  secret_string = jsonencode(local.vault-tls-cert)
}
