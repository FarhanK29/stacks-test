upstream_input "network_stack" {
  type   = "stack"
  source = "app.staging.terraform.io/test-621759812759821/Default Project/stacks-test"
}

deployment "staging" {
  inputs = {
    resource_count   = 7
    random_pet_count = 0
    vpc_id           = upstream_input.network_stack.vpc_id_staging
  }
}


# deployment "staging" {
#   inputs = {
#     resource_count   = 8
#     random_pet_count = 0
#   }
# }

# deployment "qa" {
#   inputs = {
#     resource_count    = 2
#     random_pet_count  = 3
#   }
# }

# deployment "prod" {
#   inputs = {
#     resource_count    = 9
#     random_pet_count  = 0
#   }
# }