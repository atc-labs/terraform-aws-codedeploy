resource "aws_iam_role_policy" "iam_role_policy-codedeploy" {
  name   = "codedeploy-${var.project-abbr}-${var.function-abbr}-${local.region-abbr}"
  role   = aws_iam_role.iam_role-codedeploy.id
  policy = data.aws_iam_policy_document.iam_policy_document-iam_role-codedeploy-policy.json
}
