# PrestaShop on AWS — Practical Assignment

Deploy PrestaShop on an EC2 application server with a separate EC2
database server. The final submission will include a public storefront
URL, implementation documentation, and genuine AWS Console screenshots.

## Architecture
See [Architecture](docs/architecture.md) and
[Implementation Record](docs/implementation.md).

## Repository layout
- `scripts/` — initial application and database setup scripts
- `terraform/` — infrastructure-as-code files
- `docs/` — architecture and deployment evidence
- `screenshots/` — real screenshots captured during deployment

## Important
This repository is a work in progress. The scripts and Terraform must be
completed and validated before production use or AWS deployment. No AWS
resources have been created by these files.

Never commit passwords, private keys, `.env` files or Terraform state.
Check account-specific Free Tier eligibility and potential charges before
launching any resources.
