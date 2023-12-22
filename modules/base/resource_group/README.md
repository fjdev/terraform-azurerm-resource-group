# Resource Group
This module manages a resource group.
All possible configurations as described in the [Terraform documentation](https://registry.terraform.io/providers/hashicorp/azurerm/3.69.0/docs/resources/resource_group) are supported.
The module has been developed and tested for the AzureRM provider version **3.69.0**.

## Module usage example
```hcl
module "resource_group" {
  source = "../../modules/base/resource_group"

  name     = "rg-cgk-weu-p-ais-shared"
  location = "northeurope"
}
```
