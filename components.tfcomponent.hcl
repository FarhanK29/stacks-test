required_providers {
  null = {
    source  = "hashicorp/null"
    version = "~> 3.2"
  }
  # Comment out this block
  # random = {
  #   source  = "hashicorp/random"
  #   version = "~> 3.9"
  # }
}

provider "null" "this" {}

# provider "random" "this" {} #comment out

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
    # random = provider.random.this #comment out
  }
}

output "ids" {
  type  = list(string)
  value = component.test.ids
}

# comment this block out
# output "random_names" {
#   type  = list(string)
#   value = component.test.random_names
# }
