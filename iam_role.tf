resource "aws_iam_role" "iam_role-codedeploy" {
  name               = "codedeploy-${var.project-abbr}-${var.function-abbr}-${local.region-abbr}"
  assume_role_policy = data.aws_iam_policy_document.iam_policy_document-iam_role-codedeploy-assume_role_policy.json
  tags = merge(
    local.required_tags
  )
}
