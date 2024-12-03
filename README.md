# INDA Terraform Project

## Setup Instructions

1. **Install AWS CLI v2**
   - Follow the instructions [here](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) to install AWS CLI v2.

2. **Install Sessions Manager Plugin**
   - Follow the instructions [here](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html) to install the Sessions Manager Plugin.

3. **Restart the Terminal**
   - After installing the AWS CLI and Sessions Manager Plugin, restart your terminal to ensure all changes take effect.

4. **Configure AWS Credentials**
   - Run the following command to configure your AWS credentials:
     ```sh
     aws configure
     ```
   - Follow the prompts to enter your AWS Access Key ID, Secret Access Key, region, and output format.

5. **Set Up `terraform.tfvars` File**
   - Create a file named `terraform.tfvars` in the root of your project directory and add the following content:
     ```hcl
     region               = "<region, us-west-2 for example>"
     ami                  = "<ami_id>"
     instance_name        = "<name_of_instance>"
     instance_type        = "<type_of_instance, t2.micro for example>"
     iam_instance_profile = "<name_of_IAM_Instance_Profile>"
     ```

6. **Run Terraform Apply**
   - Navigate to the project directory and run the following command:
     ```sh
     terraform apply
     ```
   - When prompted, type `yes` to confirm the changes.

7. **Retrieve Connection Command**
   - After `terraform apply` finishes, the connection command will be displayed in the output. Use this command to start a session with the EC2 instance.
