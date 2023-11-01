Prerequisites
Before you start, ensure you have the following prerequisites in place:

Amazon Web Services (AWS) account with the necessary permissions.
Docker installed on your local machine for building and pushing Docker images.
kubectl installed for interacting with your EKS cluster.
Terraform installed for managing your infrastructure.
GitHub account for setting up GitHub Actions.

Step 1: Push Docker Image to ECR

1. Build and tag your Docker image:
    docker build -t my-image:latest .

2. Authenticate to ECR using the AWS CLI:
    aws ecr get-login-password --region <your-region> | docker login --username AWS --password-stdin <your-account-id>.dkr.ecr.<your-region>.amazonaws.com

3. Push the Docker image to ECR:
    docker tag my-image:latest <your-account-id>.dkr.ecr.<your-region>.amazonaws.com/my-repo:latest
    docker push <your-account-id>.dkr.ecr.<your-region>.amazonaws.com/my-repo:latest

Step 2: Deploy Infrastructure with Terraform

1. Clone this repository to your local machine:
    git@github.com:sanyo123/EKS-setup.git

2. Navigate to the Terraform directory:
    cd EKS-setup

3. Initialize Terraform and apply the configuration:
    terraform init
    terraform apply

4. Provide the required input values as prompted by Terraform.

   the backend will be stored on aws S3 bucket.

Running the pipeline 

1. Go to your GitHub repository's main page.

2. Click on the "Actions" tab in the top menu.

3. Find the GitHub Actions workflow you want to run in the list of workflows. It should be listed under "All workflows."

4. Click on the name of the workflow you want to run.

5. In the workflow details page, click the "Run workflow" button. This will manually trigger the GitHub Actions workflow.

6. You may need to provide any required parameters or secrets as needed by your specific workflow. These could be configured as input parameters in 
   your workflow file.

7. Once you've started the workflow, you can monitor its progress in the Actions tab. You'll see the workflow's status, logs, and any steps 
   it's performing.