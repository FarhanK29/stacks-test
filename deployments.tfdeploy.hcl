deployment "dev" {
  inputs = {
    resource_count   = 3
    random_pet_count = 4
  }
}

deployment "prod" {
  inputs = {
    resource_count   = 1
    random_pet_count = 7
  }
}
