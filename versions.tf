terraform {
  required_version = ">= 0.14"

  required_providers {
    gpg = {
      source = "invidian/gpg"
      version = "~> 0.3.0"
    }
  }
}
