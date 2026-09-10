terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
    # random = {
    #   source  = "hashicorp/random"
    #   version = "~> 3.9"
    # }
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

# resource "random_pet" "test" {
#   count  = 3
#   prefix = var.deployment_name
# }

output "ids" {
  value = null_resource.test[*].id
}

# output "random_names" {
#   value = random_pet.test[*].id
# }
