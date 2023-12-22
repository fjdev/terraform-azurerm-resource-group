# Virtual Network
This module manages a virtual network including any configured subnets. Each subnet can optionally be configured with a security group and a route table to be associated with the subnet. The module also supports the creation of virtual network peerings.
All possible configurations as described in the [Terraform documentation](https://registry.terraform.io/providers/hashicorp/azurerm/3.69.0/docs/resources/virtual_network) are supported.
The module has been developed and tested for the AzureRM provider version **3.69.0**.

## The module creates the following resources:
- Virtual Network
- Resource Group (Optional)
- Subnets (Optional)
- Network Security Groups (Optional)
- Route Tables (Optional)
- Virtual Network Peerings (Optional)

### Virtual Network Peerings
The resource supports the creation of virtual network peerings. The following types are supported:
- **hub**: The virtual network is a hub virtual network. The virtual network peering is created with the `allow_virtual_network_access` and `allow_forwarded_traffic` properties set to `true`.
- **spoke**: The virtual network is a spoke virtual network. The virtual network peering is created with the `allow_virtual_network_access` and `allow_gateway_transit` properties set to `true`.

**Important**: The virtual network peering has to be configured both on the hub and spoke virtual network. This is due to limitations in the AzureRM provider and deploying across multiple subscriptions.

## Module usage example
```hcl
module "virtual_network" {
  source = ""

  name                = "vnet-cnts-weu-p-mgt"
  resource_group_name = "rg-cnts-weu-p-net-mgt"
  address_space       = ["172.19.254.0/24"]
  dns_servers         = ["172.19.251.4", "172.19.251.5", "168.63.129.16"]
  subnets = {
    "snet-cnts-weu-p-mgt-pe" = {
      address_prefixes             = ["172.19.254.0/27"]
      ip_address_virtual_appliance = local.ip_address_virtual_appliance
    }
  }
  virtual_network_peerings = {
    type = "spoke"
    remote_virtual_networks = {
      "vnet-cnts-weu-p-hub" = {
        subscription_id     = local.subscription_ids["connectivity"]
        resource_group_name = "rg-cnts-weu-p-net-hub"
      }
    }
  }
}
```
