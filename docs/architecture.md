# PrestaShop AWS Architecture

## Objective
Deploy PrestaShop with the application and database on separate EC2
instances, using AWS-provided public DNS for the storefront.

## Planned components
- Application EC2: Ubuntu, Apache, PHP, PrestaShop.
- Database EC2: Ubuntu, MariaDB.
- Application security group: public HTTP (80) for initial testing;
  SSH (22) restricted to the administrator's IP.
- Database security group: MariaDB TCP 3306 only from the
  application security group; no public database access.
- Application connects to MariaDB over the VPC private network.
- GitHub stores source, scripts, Terraform and documentation.
- AWS Console screenshots are collected during the real deployment.

## Security
- Do not commit credentials, private keys, .env files or Terraform state.
- Use unique database credentials and least-privilege database grants.
- Never allow SSH or database ports from 0.0.0.0/0.
- Confirm AWS pricing and account-specific free allowances before launch.
- HTTPS requires a suitable TLS setup; an AWS public DNS name alone
  does not provide a trusted HTTPS certificate.

## Cost controls
- Verify eligible instance types and remaining free allowances.
- Avoid load balancers and managed database services unless required.
- Stop or terminate resources when no longer needed, after saving evidence.
- Check public IPv4, storage and data-transfer charges as applicable.
