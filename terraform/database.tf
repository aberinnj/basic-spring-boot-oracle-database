// --------------------------------
// ADB Resource to provision
// --------------------------------
resource "oci_database_autonomous_database" "autonomous_database" {
  #Required
  admin_password           = var.database_password
  compartment_id           = var.compartment_ocid
  db_name                  = var.database_name

  #Optional
  db_version                                     = var.database_version != null ? var.database_version : local.latest_version
  db_workload                                    = var.database_workload
  display_name                                   = var.database_name
  is_auto_scaling_enabled                        = "true"
  is_auto_scaling_for_storage_enabled            = "true"
  compute_model                                  = "ECPU"
  cpu_core_count                                 = "2"
  data_storage_size_in_tbs                       = "1"
  license_model                                  = "LICENSE_INCLUDED"
  is_preview_version_with_service_terms_accepted = "false"

  character_set                                  = "AL32UTF8"
  ncharacter_set                                 = "AL16UTF16"
}
