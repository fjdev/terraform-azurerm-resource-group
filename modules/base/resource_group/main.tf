// Manages a Resource Group.
resource "azurerm_resource_group" "resource_group" {
  name     = var.name
  location = var.location

  // Optional
  managed_by = var.managed_by
  tags       = merge(var.tags, { ManagedBy = "Terraform", CreationDate = timestamp() })

  lifecycle {
    ignore_changes = [
      tags["CreationDate"]
    ]
  }
}
