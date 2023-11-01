Prerequisites
Before you start, ensure you have the following prerequisites in place:

Amazon Web Services (AWS) account with the necessary permissions.
Create a public or private repository on your aws account.

We have 2 branches on the Repo, one is dev branch for building terraform infrastructure, and main branch for pushing our containerized image to eks cluster.
Ensure you update your repo name on the github action workflow file and set the neccessary AWS secret on your local github repository.
I have used S3 bucket and dynamoDB for remote backend and state locking.
To destroy the infrastructure use thed destroy.yml workflow.


Step 1: Deploy Infrastructure with Terraform

Go to the dev branch and click on the dev.yml worlflow in the .github/workflows folder and run the workload to deploy the eks cluster

Step 2. Navigate to the main branch and run the main.yml github action workflow to deploy the containerized app on our eks clusters.

Instructions to run GitHub action automation workflow
1. Go to your GitHub repository's main page.

2. Click on the "Actions" tab in the top menu.

3. Find the GitHub Actions workflow you want to run in the list of workflows. It should be listed under "All workflows."

4. Click on the name of the workflow you want to run.

5. In the workflow details page, click the "Run workflow" button. This will manually trigger the GitHub Actions workflow.

6. You may need to provide any required parameters or secrets as needed by your specific workflow. These could be configured as input parameters in 
   your workflow file.

7. Once you've started the workflow, you can monitor its progress in the Actions tab. You'll see the workflow's status, logs, and any steps 
   it's performing.
