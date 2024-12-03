# Basic EC2 instance details
# modules/ec2/main.tf
resource "aws_instance" "inda_inst" {
    ami                  = var.ami
    instance_type        = var.instance_type
    iam_instance_profile = var.iam_instance_profile

    tags = {
        Name = var.instance_name
    }
}