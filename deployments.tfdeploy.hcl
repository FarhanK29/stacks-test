identity_token "default" {
  audience = ["stacks.terraform.io"]
}

store "local" "state" {
  # Using the built-in local store keeps this test stack fully self-contained
  # (no cloud account or HCP Terraform state store required).
}

deployment "dev" {
  inputs = {
    deployment_name = "dev"
    resource_count  = 5
  }
}

deployment "staging" {
  inputs = {
    deployment_name = "staging"
    resource_count  = 5
  }
}

deployment "prod" {
  inputs = {
    deployment_name = "prod"
    resource_count  = 5
  }
}
