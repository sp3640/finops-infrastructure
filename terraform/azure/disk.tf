# Azure Managed Disks
# FinOps Optimizer is file mein unattached disks flag karega

resource "azurerm_managed_disk" "backup_disk" {
  name                 = "disk-backup-legacy-2022"
  location             = "westeurope"
  resource_group_name  = "rg-production"
  storage_account_type = "Premium_LRS"  # FinOps will optimize this
  create_option        = "Empty"
  disk_size_gb         = 1024

  tags = {
    Environment = "production"
    ManagedBy   = "terraform"
  }
}