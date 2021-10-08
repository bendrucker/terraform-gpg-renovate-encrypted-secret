resource "gpg_encrypted_message" "secret" {
  content = jsonencode({
    o = var.organization,
    r = var.repository,
    v = var.plaintext,
  })

  public_keys = [
    var.public_key,
  ]
}
