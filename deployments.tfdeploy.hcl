deployment_auto_approve "always" {
  check {
    condition = context.plan.changes.add >= 0
    reason    = "Automatically approve all plans."
  }
}

deployment_group "auto_apply" {
  auto_approve_checks = [
    deployment_auto_approve.always
  ]
}

deployment "dev" {
  deployment_group = deployment_group.auto_apply

  inputs = {
    resource_count   = 7
    random_pet_count = 0
  }
}

# deployment "staging" {
#   deployment_group = deployment_group.auto_apply
#   inputs = {
#     resource_count   = 8
#     random_pet_count = 0
#   }
# }

# deployment "qa" {
# deployment_group = deployment_group.auto_apply
#
# inputs = {
# resource_count = 2
# random_pet_count = 3
# }
# }

# deployment "prod" {
# deployment_group = deployment_group.auto_apply
#
# inputs = {
# resource_count = 9
# random_pet_count = 0
# }
# }