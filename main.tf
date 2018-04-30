resource "random_id" "vm_random_id" {
  keepers = {
    sa_name = "${var.sa_name}"
  }

  byte_length = 2
}

resource "azurerm_storage_account" "storage_account" {
  name = "${var.sa_name}${lower(random_id.vm_random_id.dec)}"
  resource_group_name       = "${var.resource_group_name}"
  location                  = "${var.location}"
  account_kind              = "${var.account_kind}"
  account_tier              = "${var.account_tier}"
  account_replication_type  = "${var.account_replication_type}"
  #access_tier               = "${var.access_tier}"
  enable_blob_encryption    = "${var.blob_encryption}"
  enable_file_encryption    = "${var.file_encryption}"
  enable_https_traffic_only = "${var.https_traffic}"
  account_encryption_source = "${var.account_encryption_source}"

  tags = "${var.tags}"
}

resource "azurerm_storage_container" "storage_container" {
  name                  = "${var.container_names[count.index]}"
  resource_group_name   = "${azurerm_storage_account.storage_account.resource_group_name}"
  storage_account_name  = "${azurerm_storage_account.storage_account.name}"
  container_access_type = "${lookup(var.container_access_type,var.container_names[count.index])}"
  count                 = "${length(var.container_names) > 0 ? 1 : 0}"
}

resource "azurerm_storage_blob" "storage_blob" {
  name                   = "${var.blob_names[count.index]}"
  resource_group_name    = "${azurerm_storage_account.storage_account.resource_group_name}"
  storage_account_name   = "${azurerm_storage_account.storage_account.name}"
  storage_container_name = "${var.container_names[count.index]}"
  count                  = "${length(var.blob_names) > 0 ? 1 : 0}"
}
