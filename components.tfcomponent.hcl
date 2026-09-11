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

provider "null" "this" {}
provider "random" "this" {}

variable "resource_count" {
  type = number
}

variable "random_pet_count" {
  type = number
}

component "test" {
  source = "./components/test"

  inputs = {
    resource_count   = var.resource_count
    random_pet_count = var.random_pet_count
  }

  providers = {
    null   = provider.null.this
    random = provider.random.this
  }
}