// password is required
variable database_password {
  description = "password of the database admin"
  sensitive = true
}

// compartment OCID is required
variable compartment_ocid {
  description = "OCID of the compartment to provision resources in"
}

// wallet location
variable database_wallet_location {
  default = null
  description = "absolute path for wallet to be downloaded in, downloaded as local wallet.zip file in the same directory otherwise"
}

// download the wallet and unzip
variable download_wallet {
  type = bool
  default = false
  description = "boolean value if wallet is to be downloaded"
}

// name of database
variable database_name {
  default = "my23aidb"
  description = "name of the database"
}

// supported versions can be 23ai, 19c
// not required and defaults to the latest version
variable database_version {
  default = null
  description = "version of the database"
}

variable database_workload {
  description = "type of workload"
  default = "OLTP"
}
