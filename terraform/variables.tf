variable "aws_region" {
  description = "AWS deployment region"
  type        = string
  default     = "eu-north-1"
}

variable "project_name" {
  description = "Project resource name prefix"
  type        = string
  default     = "prestashop-assignment"
}

variable "admin_cidr" {
  description = "Administrator public IPv4 CIDR for SSH, e.g. 203.0.113.10/32"
  type        = string

  validation {
    condition     = can(cidrnetmask(var.admin_cidr)) && endswith(var.admin_cidr, "/32")
    error_message = "Use one administrator IPv4 address in /32 CIDR format."
  }
}
