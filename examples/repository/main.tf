variable "plaintext" {
  type = string
}

module "renovate_encrypted" {
  source = "../.."

  plaintext    = var.plaintext
  organization = "my-org"
  repository   = "my-repo"
}

output "encrypted" {
  value = module.renovate_encrypted.ciphertext
}
