# Azure Virtual Machines
# FinOps Optimizer is file mein idle VMs flag karega

resource "azurerm_linux_virtual_machine" "analytics_vm" {
  name                = "vm-prod-analytics-03"
  resource_group_name = "rg-production"
  location            = "eastus"
  size                = "Standard_D4s_v3"  # FinOps will optimize this

  tags = {
    Environment = "production"
    ManagedBy   = "terraform"
  }
}