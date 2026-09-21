deployment "dev" {
  inputs = {
    resource_count   = 1
    random_pet_count = 1
  }
}

deployment "staging" {
  inputs = {
    resource_count   = 2
    random_pet_count = 1
  }
}

# deployment "qa" {
#   inputs = {
#     resource_count    = 0
#     random_pet_count  = 0
#   }
# }

deployment "prod" {
  inputs = {
    resource_count    = 3
    random_pet_count  = 1
  }
}