# Implementation Record

## Phase 1: GitHub preparation
- Repository: https://github.com/tarris22/prestashop-aws-assignment-Copy
- Source and scripts are prepared locally before AWS deployment.
- No AWS deployment has been performed at the time of this initial record.

## Phase 2: AWS preflight
Before creating resources:
1. Inspect the account's available Free Tier/Free Plan allowances.
2. Confirm region, eligible instance types and storage limits.
3. Confirm the required Ubuntu image and supported PrestaShop version.
4. Plan application and database security groups.
5. Estimate possible charges.

## Phase 3: Deployment
Record actual instance IDs, instance types, private IPs, public DNS,
security-group rules, installed versions and test results here.

## Phase 4: Verification
- Confirm the public storefront loads.
- Confirm the PrestaShop installation completes.
- Confirm the application uses the separate database server.
- Confirm port 3306 is not publicly reachable.
- Capture genuine AWS Console screenshots and redact sensitive details.

## Evidence checklist
- [ ] AWS account/region and pricing eligibility
- [ ] Application EC2 instance
- [ ] Database EC2 instance
- [ ] Security-group inbound rules
- [ ] Application and database network separation
- [ ] Successful PrestaShop storefront
- [ ] GitHub repository and commit history
