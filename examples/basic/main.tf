module "renovate_encrypted" {
  source = "../.."

  plaintext    = "secret key"
  organization = "my-org"
}

output "encrypted" {
  value = module.renovate_encrypted.ciphertext
}
