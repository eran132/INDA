# INDA Terraform Project

## Setup Instructions

1. **Install AWS CLI v2**
   - Follow the instructions [here](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) to install AWS CLI v2.

2. **Install Sessions Manager Plugin**
   - Follow the instructions [here](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html) to install the Sessions Manager Plugin.

3. **Restart the Terminal**
   - After installing the AWS CLI and Sessions Manager Plugin, restart your terminal to ensure all changes take effect.

4. **Run Terraform Apply**
   - Navigate to the project directory and run the following command:
     ```sh
     terraform apply
     ```
   - When prompted, type `yes` to confirm the changes.

5. **Retrieve Connection Command**
   - After `terraform apply` finishes, the connection command will be displayed in the output. Use this command to start a session with the EC2 instance.
