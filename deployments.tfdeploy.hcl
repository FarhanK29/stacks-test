deployment "dev" {
  inputs = {
    resource_count = 2
  }
}

deployment "staging" {
  inputs = {
    resource_count = 3
  }
}

deployment "prod" {
  inputs = {
    resource_count = 4
  }
}