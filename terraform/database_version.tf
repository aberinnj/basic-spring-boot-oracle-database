// Retrieve latest version
data "oci_database_autonomous_db_versions" "test_autonomous_db_versions" {
  #Required
  compartment_id = var.compartment_ocid
  db_workload = var.database_workload
}

// retrieves version property of each object
locals {
  all_versions = [ for v in  data.oci_database_autonomous_db_versions.test_autonomous_db_versions.autonomous_db_versions: v.version]
  latest_version = element(sort(local.all_versions), length(local.all_versions) -1)
}

// outputs value
output "version_to_provision" {
  value = "23ai"
}