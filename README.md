# 🚀 Auto-AWS Infrastructure 🚀

## Overview
Auto-AWS Infrastructure automates the deployment of scalable AWS infrastructure using Terraform and Jenkins. This project sets up a Virtual Private Cloud (VPC) with public and private subnets, deploys EC2 instances (Bastion Host and Ubuntu Server), configures Internet Gateway (IGW), NAT Gateway, and includes a Lambda function to monitor changes in the Terraform state file stored in an S3 bucket. Jenkins pipelines are utilized for continuous integration and deployment of Terraform scripts across different environments (Production and Development).

## Prerequisites
Ensure you have the following prerequisites installed and configured on your local machine:

- AWS CLI
- Terraform
- Docker
- Git

## Setup Instructions

### 1. Terraform
- **VPC**: Creates a VPC with public and private subnets, Internet Gateway (IGW), and a NAT Gateway.
- **EC2 Instances**:
  - **Bastion Host**: Sets up an EC2 instance in the public subnet.
  - **Ubuntu Server**: Sets up an EC2 instance in the private subnet.
- **Key Pair**: Generates an AWS key pair for SSH access to the instances.
- **Outputs**: Stores the Bastion Host public IP in a local file.

### 2. Lambda Function
- **S3 Bucket**: Creates an S3 bucket to store the Terraform state file (`.tfstate`).
- **Lambda Function**: Triggers an email using SES when changes are detected in the Terraform state file.
- **IAM Role**: Creates an IAM role with necessary permissions for S3 and SES access.

### 3. Docker and Jenkins for CI/CD

- **Dockerfile**: Builds a Jenkins image with Terraform installed.
- **Build and Run Docker Image**: Runs a Jenkins container.

### 4. Jenkins Pipeline
- **Access Jenkins**: Opens Jenkins at `http://localhost:8080`.
- **Install Plugins**: Installs necessary plugins (Git, Pipeline, Docker Pipeline).
- **Create Pipeline Job**:
  - **Source Control**: Sets up the pipeline to pull Terraform scripts from a GitHub repository.
  - **Pipeline Script**: Defines a Jenkins pipeline with stages for initialization and Terraform actions (plan, apply, destroy).

## Usage
1. Clone this repository to your local machine:

```sh
git clone https://github.com/jrmokhtar/auto-aws-infrastructure.git
```

2. Follow the setup instructions provided above to deploy the infrastructure and configure the application.
## **Contributing**
Contributions are welcome! If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request.

## **License**
This project is licensed under the [MIT License](LICENSE).

🚀 Happy deploying! 🌟
