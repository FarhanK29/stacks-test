terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
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

resource "local_file" "test" {
  count    = var.resource_count
  filename = "${path.module}/../../.generated/${var.deployment_name}/resource-${count.index}.txt"
  content  = "Deployment: ${var.deployment_name}\nResource index: ${count.index}\n"
}

output "file_paths" {
  value = local_file.test[*].filename
}
