terraform {
  required_version = "1.7.5"

  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.51.1"
    }
    sops = {
      source  = "carlpett/sops"
      version = "1.0.0"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Opswork"

    workspaces {
      name = "tfe-workspaces-NEW"
    }
  }
}
