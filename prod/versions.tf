terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.74.2"
    }

    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
  required_version = ">= 0.13"
}
