deployment "dev" {
  inputs = {
    resource_count   = 3
    random_pet_count = 4
  }
}

deployment "staging" {
  inputs = {
    resource_count   = 3
    random_pet_count = 3
  }
}
