variable "name" {
  description = "The name of the virtual network"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network"
  type        = string
}

variable "location" {
  description = "The location/region where the virtual network is created"
  type        = string
}

variable "address_space" {
  description = "The address space that is used the virtual network"
  type        = list(string)
}

variable "bgp_community" {
  description = "The BGP community associated with the virtual network"
  type        = string
  default     = null
}

variable "dns_servers" {
  description = "The DNS servers associated with the virtual network"
  type        = list(string)
  default     = null
}

variable "edge_zone" {
  description = "The edge zone associated with the virtual network"
  type        = string
  default     = null
}

variable "flow_timeout_in_minutes" {
  description = "The flow timeout in minutes associated with the virtual network"
  type        = number
  default     = 4
}

variable "ddos_protection_plan" {
  description = "The DDoS protection plan associated with the virtual network"
  type = list(object({
    id     = string
    enable = bool
  }))
  default = []
}

variable "encryption" {
  description = "The encryption associated with the virtual network"
  type = list(object({
    enforcement = string
  }))
  default = []
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
