data "aws_iam_policy_document" "iam_policy_document-iam_role-codedeploy-assume_role_policy" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["codedeploy.amazonaws.com"]
    }
  }
}

data "aws_iam_policy_document" "iam_policy_document-iam_role-codedeploy-policy" {
  policy_id = "CodeDeployPolicy"
  #----------------------------------------------------------------------------
  # SSM
  statement {
    effect  = "Allow"
    actions = [
      "autoscaling:CompleteLifecycleAction",
      "autoscaling:DeleteLifecycleHook",
      "autoscaling:DescribeAutoScalingGroups",
      "autoscaling:DescribeLifecycleHooks",
      "autoscaling:PutLifecycleHook",
      "autoscaling:RecordLifecycleActionHeartbeat",
      "ec2:DescribeInstances",
      "ec2:DescribeInstanceStatus",
      "tag:GetTags",
      "tag:GetResources",
      "sns:Publish",
      "cloudwatch:DescribeAlarms",
      "elasticloadbalancing:DescribeLoadBalancers",
      "elasticloadbalancing:DescribeInstanceHealth",
      "elasticloadbalancing:RegisterInstancesWithLoadBalancer",
      "elasticloadbalancing:DeregisterInstancesFromLoadBalancer",
      "elasticloadbalancing:DescribeTargetGroups",
      "elasticloadbalancing:DescribeTargetHealth",
      "elasticloadbalancing:RegisterTargets",
      "elasticloadbalancing:DeregisterTargets"
    ]
    resources = [
      "*"
    ]
  }
}
