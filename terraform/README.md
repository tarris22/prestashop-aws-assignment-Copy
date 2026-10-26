# Terraform

This directory currently contains a pre-deployment scaffold, not a
deployable infrastructure stack. It creates no AWS resources.

Before adding resources:
1. Verify the account's Free Tier/Free Plan allowances.
2. Confirm eligible EC2 instance types and EBS storage limits.
3. Plan a separate application and database EC2 instance.
4. Restrict SSH to the administrator's IP.
5. Permit database traffic only from the application security group.
6. Review the Terraform plan before applying it.

Never commit terraform.tfstate, credentials, private keys or real
terraform.tfvars files.
