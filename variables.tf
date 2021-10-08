variable "organization" {
  type        = string
  description = "The GitHub organization that can use the secret"
}

variable "repository" {
  type        = string
  description = "The GitHub repository that can use the secret. If unspecified, all repositories in the organization can use the secret."
  default     = null
}

variable "plaintext" {
  type        = string
  description = "The secret text to encrypt"
  sensitive   = true
}

variable "public_key" {
  type        = string
  description = "The GPG public key used to encrypt the plaintext value"
  default     = <<-PEM
    -----BEGIN PGP PUBLIC KEY BLOCK-----

    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
    ssLaqgsTBEsskys=
    =nfs6
    -----END PGP PUBLIC KEY BLOCK-----
  PEM
}
