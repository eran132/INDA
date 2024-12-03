resource "aws_s3_bucket" "cloudtrail_bucket" {
  bucket        = "inda-inst-cloudtrail-logs-bucket-${var.instance_id}"
  force_destroy = true
}

data "aws_caller_identity" "current" {}

data "template_file" "cloudtrail_bucket_policy" {
  template = file("${path.module}/cloudtrail_bucket_policy.json")

  vars = {
    bucket_name = aws_s3_bucket.cloudtrail_bucket.id
    account_id  = data.aws_caller_identity.current.account_id
  }
}

resource "aws_s3_bucket_policy" "cloudtrail_bucket_policy" {
  bucket = aws_s3_bucket.cloudtrail_bucket.id
  policy = data.template_file.cloudtrail_bucket_policy.rendered
}

resource "aws_cloudtrail" "inda_trail" {
  name                          = "inda-trail"
  s3_bucket_name                = aws_s3_bucket.cloudtrail_bucket.bucket
  include_global_service_events = true
  is_multi_region_trail         = true
  enable_logging                = true

  event_selector {
    read_write_type           = "All"
    include_management_events = true
  }
}