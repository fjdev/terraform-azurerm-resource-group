# terraform-azurerm-resource-group
[![Terraform Registry](https://img.shields.io/badge/Terraform-registry-blueviolet.svg?logo=terraform)](https://registry.terraform.io/providers/hashicorp/azurerm/3.80.0/docs/resources/resource_group)

This Terraform module creates an Azure Resource Group.

## Version compatibility
| Module version | Terraform version | AzureRM version |
| -------------- | ----------------- | --------------- |
| >= 1.0.x       | >= 1.3.x          | >= 3.80.0       |

## Usage
```hcl
module "resource_group" {
  source = "git::https://github.com/fjdev/terraform-azurerm-resource-group.git?ref=v1.0.0"

  name     = "my-resource-group"
  location = "northeurope"
  tags = {
    Environment = "Development"
    CostCenter  = "IT"
  }
}
```

## Arguments
The following arguments are *required* to use this module:

| Name | Type | Description |
| ---- | ---- | ----------- |
| `name` | string | The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. |

Besides the *required* arguments listed above, several *optional* arguments are also available.
For a complete list of supported arguments, please see the [variables](variables.tf) file. Additionally, refer to the Terraform Registry documentation for the specific (sub)resource.

## Outputs
In addition to the arguments listed above, the following attributes are exported:

| Name | Description |
| ---- | ----------- |
| `id` | The ID of the Resource Group. |
| `name` | The Name of the Resource Group. |
| `location` | The Location of the Resource Group. |
