variable "subscription_id" {
  description = "The subscription ID to use for the Azure provider"
  type        = string
  sensitive   = true
  nullable    = false

  validation {
    condition     = length(var.subscription_id) == 36
    error_message = "Subscription ID must be 36 chars long"
  }
}

variable "location" {
  description = "The location to deploy the resources to"
  default     = "westeurope"
  type        = string

  validation {
    condition     = can(regex("northeurope|westeurope", var.location))
    error_message = "Location must be northeurope or westeurope"
  }
}

variable "username" {
  type        = string
  description = "The username for the local account that will be created on the VM."
  default     = "erikbjo"
}
