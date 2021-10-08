output "ciphertext" {
  description = "The encrypted ciphertext for use in Renovate configurations"
  value       = local.body
}

locals {
  ciphertext = nonsensitive(gpg_encrypted_message.secret.result)
  header = "-----BEGIN PGP MESSAGE-----"
  footer = "-----END PGP MESSAGE-----"
  body = trimspace(replace(replace(local.ciphertext, local.header, ""), local.footer, ""))
}
