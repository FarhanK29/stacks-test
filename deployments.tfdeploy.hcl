deployment "dev" {
  inputs = {
    resource_count   = 0
    random_pet_count = 0
  }
}

deployment "staging" {
  inputs = {
    resource_count   = 7
    random_pet_count = 0
  }
}

deployment "qa" {
  inputs = {
    resource_count   = 8
    random_pet_count  = 0
  }
}

deployment "prod" {
  inputs = {
    resource_count    = 9
    random_pet_count  = 1
  }
}