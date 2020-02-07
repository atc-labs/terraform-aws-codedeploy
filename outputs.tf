#------------------------------------------------------------------------------
# AWS Info
output "region" {
  description = "Region"
  value       = local.region
}
output "region-abbr" {
  description = "Region Abbreviation"
  value       = local.region-abbr
}
output "account_id" {
  description = "Account ID"
  value       = local.account_id
}

#------------------------------------------------------------------------------
# CodeDeploy
output "codedeploy_app-name" {
  description = "CodeDeploy: Application Name"
  value       = aws_codedeploy_app.codedeploy_app.name
}
output "codedeploy_app-id" {
  description = "CodeDeploy: Application ID"
  value       = aws_codedeploy_app.codedeploy_app.id
}

#------------------------------------------------------------------------------
# IAM
output "iam_role-codedeploy-id" {
  description = "IAM Role - CodeDeploy: ID"
  value       = aws_iam_role.iam_role-codedeploy.id
}
output "iam_role-codedeploy-arn" {
  description = "IAM Role - CodeDeploy: ARN"
  value       = aws_iam_role.iam_role-codedeploy.arn
}

#------------------------------------------------------------------------------
# S3
output "s3_bucket-codedeploy-id" {
  description = "S3 Bucket - CodeDeploy: ID"
  value       = var.s3_bucket-codedeploy-id
}
output "s3_bucket-codedeploy-key" {
  description = "S3 Bucket - CodeDeploy: Key"
  value       = "${var.s3_bucket-codedeploy-key_prefix}${aws_codedeploy_app.codedeploy_app.name}"
}
