deployment "dev" {
  inputs = {
    resource_count   = 0
    random_pet_count = 0
  }
}

deployment "staging" {
  inputs = {
    resource_count   = 5
    random_pet_count = 0
  }
}

deployment "qa" {
  inputs = {
    resource_count    = 3
    random_pet_count  = 5
  }
}

deployment "prod"{
  inputs = {
    resource_count    = 2
    random_pet_count  = 4
  }
}