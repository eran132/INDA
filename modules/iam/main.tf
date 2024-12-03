# modules/iam/main.tf
resource "aws_iam_role" "ssm_role" {
    name = "ssm_role"

    assume_role_policy = file("${path.module}/assume_role_policy.json")
}

resource "aws_iam_role_policy_attachment" "ssm_policy_attachment" {
    role       = aws_iam_role.ssm_role.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_instance_profile" "ssm_profile" {
    name = "ssm_profile"
    role = aws_iam_role.ssm_role.name
}