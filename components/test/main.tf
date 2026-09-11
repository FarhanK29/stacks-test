terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.9"
    }
  }
}

variable "resource_count" {
  type = number
}

variable "random_pet_count" {
  type = number
}

resource "null_resource" "test" {
  count = var.resource_count
}

resource "random_pet" "extra" {
  count = var.random_pet_count
}