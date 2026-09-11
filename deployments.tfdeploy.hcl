deployment "dev" {
  inputs = {
    resource_count = 1
  }
}

deployment "staging" {
  inputs = {
    resource_count = 2
  }
}

deployment "prod" {
  inputs = {
    resource_count = 3
  }
}