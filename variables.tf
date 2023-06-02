variable "certificate_file" {
  description = "The relative path and filename of the TLS certificate"
  type        = string
  sensitive   = true
  default     = "./tls_cert.crt"
}

variable "ca_certificate_file" {
  description = "The relative path and filename of the root CA certificate"
  type        = string
  sensitive   = true
  default     = "./tls_ca.crt"
}

variable "private_key_file" {
  description = "The relative path and filename of the TLS private key"
  type        = string
  sensitive   = true
  default     = "./tls_cert.key"
}

variable "sm_name" {
  description = "The name of the Secrets Manager Secret"
  type        = string
  default     = "Vault_TLS_Certificate"
}

variable "sm_description" {
  description = "The description of the Secrets Manager Secret"
  type        = string
  default     = "TLS certificate files necessary for Vault servers"
}

variable "environment" {
  description = "The environment this secret is for"
  type        = string
  default     = "development"
}

variable "managed_by" {
  description = "The team that is managing this secret"
  type        = string
  default     = "DevOps"
}
