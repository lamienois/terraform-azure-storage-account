# Storage account outputs

output "storage_account_id" {
  value = "${azurerm_storage_account.storage_account.id}"
}

output "storage_account_name" {
  value = "${azurerm_storage_account.storage_account.name}"
}

output "storage_account_kind" {
  value = "${azurerm_storage_account.storage_account.account_kind}"
}

output "storage_account_account_tier" {
  value = "${azurerm_storage_account.storage_account.account_tier}"
}

output "storage_account_access_tier" {
  value = "${azurerm_storage_account.storage_account.access_tier}"
}

output "storage_account_replication_type" {
  value = "${azurerm_storage_account.storage_account.account_replication_type}"
}

output "storage_account_encryption_source" {
  value = "${azurerm_storage_account.storage_account.account_encryption_source}"
}

output "storage_account_primary_location" {
  value = "${azurerm_storage_account.storage_account.primary_location}"
}

output "storage_account_secondary_location" {
  value = "${azurerm_storage_account.storage_account.secondary_location}"
}

output "storage_account_primary_blob_endpoint" {
  value = "${azurerm_storage_account.storage_account.primary_blob_endpoint}"
}

#output "storage_account_secondary_blob_endpoint" {
#  value = "${azurerm_storage_account.storage_account.secondary_blob_endpoint}"
#}

output "storage_account_primary_queue_endpoint" {
  value = "${azurerm_storage_account.storage_account.primary_queue_endpoint}"
}

#output "storage_account_secondary_queue_endpoint" {
#  value = "${azurerm_storage_account.storage_account.secondary_queue_endpoint}"
#}

output "storage_account_primary_table_endpoint" {
  value = "${azurerm_storage_account.storage_account.primary_table_endpoint}"
}

#output "storage_account_secondary_table_endpoint" {
#  value = "${azurerm_storage_account.storage_account.secondary_table_endpoint}"
#}

output "storage_account_primary_file_endpoint" {
  value = "${azurerm_storage_account.storage_account.primary_file_endpoint}"
}

output "storage_account_primary_access_key" {
  value = "${azurerm_storage_account.storage_account.primary_access_key}"
}

output "storage_account_secondary_access_key" {
  value = "${azurerm_storage_account.storage_account.secondary_access_key}"
}

output "storage_account_primary_connection_string" {
  value = "${azurerm_storage_account.storage_account.primary_connection_string}"
}

#output "storage_account_secondary_connection_string" {
#  value = "${azurerm_storage_account.storage_account.secondary_connection_string}"
#}

output "storage_account_primary_blob_string" {
  value = "${azurerm_storage_account.storage_account.primary_blob_connection_string}"
}

#output "storage_account_secondary_blob_string" {
#  value = "${azurerm_storage_account.storage_account.secondary_blob_connection_string}"
#}

# Storage container outputs

output "storage_container_ids" {
  value = "${azurerm_storage_container.storage_container.*.id}"
}

output "storage_containers_names" {
  value = "${azurerm_storage_container.storage_container.*.name}"
}

output "storage_container_sa_name" {
  value = "${azurerm_storage_container.storage_container.*.storage_account_name}"
}

output "storage_container_access_type" {
  value = "${azurerm_storage_container.storage_container.*.container_access_type}"
}

output "storage_container_properties" {
  value = "${azurerm_storage_container.storage_container.*.properties}"
}

# Blob outputs
