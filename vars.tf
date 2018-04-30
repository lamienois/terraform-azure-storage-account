# Generic Variables

variable "resource_group_name" {
  description = "Name of the resource where the storage will be created"
  type        = "string"
  default     = ""
}

variable "location" {
  description = "One of the Azure region for the resource provisioning"
  type        = "string"
  default     = "westus2"
}

# Azure Storage Account variables resource

variable "sa_name" {
  description = "Name of the storage account"
  type        = "string"
  default     = ""
}

variable "account_kind" {
  description = "Defines the Kind of account. Valid options are Storage, StorageV2 and BlobStorage. Changing this forces a new resource to be created."
  type        = "string"
  default     = "Storage"
}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium. Changing this forces a new resource to be created."
  type        = "string"
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS and ZRS."
  type        = "string"
  default     = "LRS"
}

variable "access_tier" {
  description = "Defines the access tier for BlobStorage accounts. Valid options are Hot and Cold, defaults to Hot."
  type        = "string"
  default     = "hot"
}

variable "blob_encryption" {
  description = "Boolean flag which controls if Encryption Services are enabled for Blob storage."
  type        = "string"
  default     = true
}

variable "file_encryption" {
  description = "Boolean flag which controls if Encryption Services are enabled for File storage."
  type        = "string"
  default     = true
}

variable "https_traffic" {
  description = "Boolean flag which forces HTTPS if enabled"
  type        = "string"
  default     = true
}

variable "account_encryption_source" {
  description = "The Encryption Source for this Storage Account. Possible values are Microsoft.Keyvault and Microsoft.Storage. Defaults to Microsoft.Storage."
  type        = "string"
  default     = "Microsoft.Storage"
}

# Azure Storage container variables resource

variable "container_names" {
  description = "The name of the storage container. Must be unique within the storage service the container is located."
  type        = "list"
  default     = [""]
}

variable "container_access_type" {
  description = "The 'interface' for access the container provides. Can be either blob, container or private. Defaults to private. Changing this forces a new resource to be created."
  type        = "map"

  default = {
  }
}

variable "blob_names" {
  description = "The name of the storage blob. Must be unique within the storage container the blob is located."
  type = "list"
  default = []
}

# Default tags

variable "tags" {
  description = "Default tags to apply on the resource"
  type        = "map"

  default = {
    environment = ""
    terraform   = "true"
  }
}
