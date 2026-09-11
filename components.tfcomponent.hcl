required_providers {
  null = {
    source  = "hashicorp/null"
    version = "~> 3.2"
  }
}

provider "null" "this" {}

variable "resource_count" {
  type = number
}

component "test" {
  source = "./components/test"

  inputs = {
    resource_count = var.resource_count
  }

  providers = {
    null = provider.null.this
  }
}