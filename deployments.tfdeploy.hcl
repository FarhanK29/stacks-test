deployment "dev" {
  inputs = {
    resource_count   = 2
    random_pet_count = 3
  }
}

deployment "staging" {
  inputs = {
    resource_count   = 4
    random_pet_count = 5
  }
}

deployment "prod" {
  inputs = {
    resource_count   = 1
    random_pet_count = 7
  }
}