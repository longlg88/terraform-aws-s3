## Copied & updated by terraform-aws-modules/terraform-aws-s3-bucket

resource "aws_s3_bucket" "this" {
  bucket        = var.bucket_name

  force_destroy       = var.force_destroy
  object_lock_enabled = var.object_lock_enabled
  tags                = var.tags

  lifecycle {
    ignore_changes = [
      acceleration_status,
      acl,
      grant,
      cors_rule,
      lifecycle_rule,
      logging,
      object_lock_configuration,
      replication_configuration,
      request_payer,
      server_side_encryption_configuration,
      versioning,
      website
    ]
  }
}
