# Splunk-Cribl-CI-CD
## Overview
This repository provides an automated CI/CD pipeline to manage Cribl pipelines and ingest logs from AWS CloudWatch into Splunk. The workflow ensures seamless updates and deployments using GitHub Actions and Terraform.

## Repository Structure
```
📂 cribl-pipelines/       # Cribl pipeline configurations in JSON format
📂 terraform/             # Terraform scripts for AWS CloudWatch setup
📂 splunk/                # Splunk configurations for log ingestion
📂 scripts/               # Helper scripts for testing and validation
📂 .github/workflows/     # GitHub Actions CI/CD workflows
```

## CI/CD Workflow
### GitHub Actions Workflow (`.github/workflows/deploy.yml`)
- Triggers when changes are pushed to `cribl-pipelines/`.
- Uses the Cribl API to deploy updated pipelines.
- Requires a secret `CRIBL_TOKEN` for authentication.

### Workflow Steps:
1. **Checkout Repository** - Pulls the latest code.
2. **Install Dependencies** - Ensures `jq` is available for JSON parsing.
3. **Deploy Pipelines** - Uploads Cribl pipelines using the API.
4. **Verify Deployment** - Fetches and validates deployed pipelines.
