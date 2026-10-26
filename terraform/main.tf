# Pre-deployment scaffold only.
# No AWS resources are created by this configuration yet.
# Resource creation will be added after Free Tier eligibility,
# instance types, and network design have been verified.

data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

locals {
  common_tags = {
    Project   = var.project_name
    ManagedBy = "Terraform"
    Purpose   = "PrestaShop assignment"
  }
}
