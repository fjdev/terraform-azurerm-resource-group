// Manages a Resource Group.
resource "azurerm_resource_group" "resource_group" {
  name = var.name

  // Optional
  location   = var.location
  managed_by = var.managed_by
  tags       = merge(var.tags, { ManagedBy = "Terraform", CreationDate = timestamp() }) // `ManagedBy` and `CreationDate` tags are always added.

  // `CreationDate` tag is ignored after creation so it's not changed on every apply.
  lifecycle {
    ignore_changes = [
      tags["CreationDate"]
    ]
  }
}
