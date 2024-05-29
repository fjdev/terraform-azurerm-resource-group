variable "name" {
  type        = string
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}

variable "location" {
  type        = string
  description = "The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
}

variable "managed_by" {
  type        = string
  default     = null
  description = "The ID of the resource or application that manages this Resource Group."
}

variable "tags" {
  type        = any
  default     = null
  description = "A mapping of tags which should be assigned to the Resource Group."
}
