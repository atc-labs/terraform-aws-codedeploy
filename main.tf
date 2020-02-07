locals {
  region = data.aws_region.this.name
  region-abbr = var.lookup-region_abbr["${data.aws_region.this.name}"]
  account_id = data.aws_caller_identity.this.account_id
}
