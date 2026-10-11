data "oci_tenantmanagercontrolplane_organization_tenancies" "tenantmanagercontrolplane_organization_tenancies_lookup" {
  for_each = var.tenantmanagercontrolplane_organization_tenancies_lookup

  organization_id = each.value.organization_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

