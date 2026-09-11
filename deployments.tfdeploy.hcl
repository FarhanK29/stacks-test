deployment "dev" {
  inputs = {
    resource_count = 4
  }
}

deployment "staging" {
  inputs = {
    resource_count = 5
  }
}

deployment "prod" {
  inputs = {
    resource_count = 6
  }
}