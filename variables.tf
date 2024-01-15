variable "name" {
  type        = string
  description = "(Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
}

variable "location" {
  type        = string
  default     = "westeurope"
  description = "(Optional) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}

variable "managed_by" {
  type        = string
  default     = null
  description = "(Optional) The ID of the resource that manages this resource group."
}

variable "tags" {
  type        = any
  default     = null
  description = "(Optional) A mapping of tags which should be assigned to the Resource Group."
}
