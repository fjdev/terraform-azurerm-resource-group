// The following arguments are supported:
variable "name" {
  type        = string
  description = "(Required) The Name which should be used for this Resource. Changing this forces a new Resource to be created."
}

// Optional
variable "location" {
  type        = string
  default     = "westeurope"
  description = "(Required) The Azure Region where the Resource should exist. Changing this forces a new Resource to be created."
}

variable "managed_by" {
  type        = string
  default     = null
  description = "(Optional) The ID of the resource or application that manages this Resource Group."
}

variable "tags" {
  type = object({
    resource_group = optional(any)
  })
  default     = null
  description = "(Optional) A mapping of tags to assign to the resources."
}
