# In addition to the arguments listed above - the following attributes are exported:
output "id" {
  value       = azurerm_resource_group.resource_group.id
  description = "The ID of the Resource Group."
}

output "name" {
  value       = azurerm_resource_group.resource_group.name
  description = "The Name of the Resource Group."
}

output "location" {
  value       = azurerm_resource_group.resource_group.location
  description = "The Location of the Resource Group."
}
