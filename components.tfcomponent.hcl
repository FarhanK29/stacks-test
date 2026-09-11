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

variable "deployment_name" {
  type = string
}

variable "resource_count" {
  type    = number
  default = 5
}

component "test" {
  source = "./components/test"

  inputs = {
    deployment_name = var.deployment_name
    resource_count  = var.resource_count
  }

  providers = {
    null = provider.null.this
    random = provider.random.this
  }
}

output "ids" {
  type  = list(string)
  value = component.test.ids
}

output "random_names" {
  type  = list(string)
  value = component.test.random_names
}
