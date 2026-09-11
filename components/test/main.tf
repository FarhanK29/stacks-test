terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

variable "resource_count" {
  type = number
}

resource "null_resource" "test" {
  count = var.resource_count
}