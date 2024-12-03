# Basic EC2 instance details
resource "aws_instance" "inda_inst" {
    ami                  = var.ami
    instance_type        = var.instance_type
    iam_instance_profile = var.iam_instance_profile
    tags = {
        Name = var.instance_name
    }
}

output "inda_inst_id" {
  value = aws_instance.inda_inst.id
}