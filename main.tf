resource "gpg_encrypted_message" "secret" {
  content = jsonencode(merge(
    { o = var.organization, v = var.plaintext },
    var.repository == null ? {} : { r = var.repository },
    )
  )
  
  public_keys = [
    var.public_key,
  ]
}
