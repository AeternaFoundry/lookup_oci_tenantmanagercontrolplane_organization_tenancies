output "tenantmanagercontrolplane_organization_tenancies_lookup_id" {
  description = "Map of id values across all tenantmanagercontrolplane_organization_tenancies_lookup, keyed the same as var.tenantmanagercontrolplane_organization_tenancies_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_tenantmanagercontrolplane_organization_tenancies.tenantmanagercontrolplane_organization_tenancies_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tenantmanagercontrolplane_organization_tenancies_lookup_filter" {
  description = "Map of filter values across all tenantmanagercontrolplane_organization_tenancies_lookup, keyed the same as var.tenantmanagercontrolplane_organization_tenancies_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_tenantmanagercontrolplane_organization_tenancies.tenantmanagercontrolplane_organization_tenancies_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "tenantmanagercontrolplane_organization_tenancies_lookup_organization_id" {
  description = "Map of organization_id values across all tenantmanagercontrolplane_organization_tenancies_lookup, keyed the same as var.tenantmanagercontrolplane_organization_tenancies_lookup except keys with no organization_id are omitted"
  value       = { for k, v in data.oci_tenantmanagercontrolplane_organization_tenancies.tenantmanagercontrolplane_organization_tenancies_lookup : k => v.organization_id if v.organization_id != null && length(v.organization_id) > 0 }
}
output "tenantmanagercontrolplane_organization_tenancies_lookup_organization_tenancy_collection" {
  description = "Map of organization_tenancy_collection values across all tenantmanagercontrolplane_organization_tenancies_lookup, keyed the same as var.tenantmanagercontrolplane_organization_tenancies_lookup except keys with no organization_tenancy_collection are omitted"
  value       = { for k, v in data.oci_tenantmanagercontrolplane_organization_tenancies.tenantmanagercontrolplane_organization_tenancies_lookup : k => v.organization_tenancy_collection if v.organization_tenancy_collection != null && length(v.organization_tenancy_collection) > 0 }
}

