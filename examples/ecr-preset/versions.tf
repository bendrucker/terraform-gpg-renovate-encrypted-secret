terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3"
    }

    github = {
      source  = "integrations/github"
      version = "~> 4"
    }
  }
}