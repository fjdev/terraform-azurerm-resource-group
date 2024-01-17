resource "azurerm_resource_group" "resource_group" {
  name       = var.name

  # The arguments listed below are optional.
  location   = var.location
  managed_by = var.managed_by

  # Assign specified tags and add default `ManagedBy` and `CreationDate` tags.
  tags = merge(var.tags, { ManagedBy = "Terraform", CreationDate = timestamp() })

  # Prevent updates to `CreationDate` tag after creation.
  lifecycle {
    ignore_changes = [
      tags["CreationDate"]
    ]
  }
}
