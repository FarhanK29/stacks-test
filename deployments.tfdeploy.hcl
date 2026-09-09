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
