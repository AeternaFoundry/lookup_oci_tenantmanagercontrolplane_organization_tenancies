variable "tenantmanagercontrolplane_organization_tenancies_lookup" {
  description = <<EOT
Map of tenantmanagercontrolplane_organization_tenancies_lookup, attributes below
Required:
    - organization_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    organization_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

