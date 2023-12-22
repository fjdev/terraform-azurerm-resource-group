// The following arguments are supported:
variable "name" {
  type        = string
  description = "(Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
}

variable "location" {
  type        = string
  default     = "westeurope"
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}

// Optional
variable "managed_by" {
  type        = string
  default     = null
  description = "(Optional) The ID of the resource or application that manages this Resource Group."
}

variable "tags" {
  type        = any
  default     = {}
  description = "(Optional) A mapping of tags which should be assigned to the Resource Group."
}
