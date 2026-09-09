required_providers {
  local = {
    source  = "hashicorp/local"
    version = "~> 2.5"
  }
}

provider "local" "this" {}

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
    local = provider.local.this
  }
}

output "file_paths" {
  type  = list(string)
  value = component.test.file_paths
}
