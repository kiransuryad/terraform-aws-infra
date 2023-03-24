# Multi-Tier Architecture in AWS

This is a Terraform project that deploys a multi-tier architecture in AWS. The architecture includes the following components:

- VPC with public and private subnets
- DynamoDB table
- PostgreSQL RDS instance
- EC2 instance with VLC media player installed

## Prerequisites

Before running this Terraform code, make sure you have the following:

- AWS account
- AWS CLI installed and configured with access keys
- Terraform installed

## How to Use

1. Clone this repository to your local machine.
2. Navigate to the cloned directory in your terminal.
3. Initialize Terraform:

   ```sh
   terraform init
4. Review the variables in the variables.tf file and update as needed.
5. Create an execution plan:

    ```sh
    terraform plan

6. Apply the changes:
    ```sh
    terraform apply
7. After Terraform finishes creating the resources, use the outputs to access the deployed services.

## Outputs

This Terraform code will output the following:

    PostgreSQL RDS instance endpoint
    DynamoDB table name
    S3 bucket name
    EC2 instance public IP address