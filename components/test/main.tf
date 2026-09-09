terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

variable "deployment_name" {
  type        = string
  description = "Name of the deployment these resources belong to."
}

variable "resource_count" {
  type        = number
  description = "Number of resources to create in this deployment."
  default     = 5
}

resource "null_resource" "test" {
  count    = var.resource_count
}

output "ids" {
  value = null_resource.test[*].id
}
