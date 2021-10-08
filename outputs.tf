output "ciphertext" {
  description = "The encrypted ciphertext for use in Renovate configurations"
  value       = gpg_encrypted_message.secret.result
}
