variable "group_integration_harbors" {
  description = <<EOT
Map of group_integration_harbors, attributes below
Required:
    - group
    - password
    - project_name
    - url
    - username
Optional:
    - use_inherited_settings
EOT

  type = map(object({
    group                  = string
    password               = string
    project_name           = string
    url                    = string
    username               = string
    use_inherited_settings = optional(bool)
  }))
}

