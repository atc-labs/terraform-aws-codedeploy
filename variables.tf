variable "codedeploy_app-name" {
  description = "CodeDeploy: Application Name"
  type        = string
  default     = ""
}
variable "codedeploy_app-compute_platform" {
  description = "CodeDeploy: Compute Platform (ECS | Lambda | Server)"
  type        = string
  default     = ""
}

variable "s3_bucket-codedeploy-id" {
  description = "S3 Bucket - CodeDeploy: ID"
  type        = string
  default     = ""
}
variable "s3_bucket-codedeploy-key_prefix" {
  description = "S3 Bucket - CodeDeploy: Key Prefix"
  type        = string
  default     = "codedeploy/"
}
