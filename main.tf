module "provider" {
  source = "./modules/provider"
}

module "iam" {
  source = "./modules/iam"
}

module "ec2" {
  source               = "./modules/ec2"
  ami                  = var.ami
  instance_type        = var.instance_type
  instance_name        = var.instance_name
  iam_instance_profile = module.iam.ssm_profile
}