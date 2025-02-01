// --------------------------------
// ADB Resource wallet download
// --------------------------------
resource "oci_database_autonomous_database_wallet" "autonomous_database_wallet" {
  count = var.download_wallet ? 1: 0
  autonomous_database_id = oci_database_autonomous_database.autonomous_database.id
  password               = random_string.autonomous_database_wallet_password[count.index].result
  base64_encode_content  = "true"
}

// create local file from wallet content
resource "local_file" "autonomous_database_wallet_file" {
  count = var.download_wallet ? 1: 0
  content_base64 = oci_database_autonomous_database_wallet.autonomous_database_wallet[count.index].content
  filename       = "${local.location}/wallet.zip"
}

// creates random password for wallet
resource "random_string" "autonomous_database_wallet_password" {
  count = var.download_wallet ? 1: 0
  length  = 16
  special = true
  min_numeric = 1
  min_lower   = 1
  min_upper   = 1
  min_special = 1
}

// creates wallet
resource "null_resource" unzip_wallet {
  count = var.download_wallet ? 1: 0
  provisioner "local-exec" {
    command = "mkdir -p ${local.location}/wallet && unzip -d ${local.location}/wallet ${local_file.autonomous_database_wallet_file[count.index].filename}"
  }
}

locals {
    location = var.database_wallet_location != null ? var.database_wallet_location: path.module
}