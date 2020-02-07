resource "aws_codedeploy_app" "codedeploy_app" {
  provider         = aws.this
  name             = var.codedeploy_app-name
  compute_platform = var.codedeploy_app-compute_platform
}
