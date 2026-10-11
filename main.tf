resource "gitlab_group_integration_harbor" "group_integration_harbors" {
  for_each = var.group_integration_harbors

  group                  = each.value.group
  password               = each.value.password
  project_name           = each.value.project_name
  url                    = each.value.url
  username               = each.value.username
  use_inherited_settings = each.value.use_inherited_settings
}

