module "lambda" {
  source = "../../"

  lambdapermmissions = [{
    intent     = "Pizza"
    source_arn = "Pizza:*"
  }]

  account_id         = data.aws_caller_identity.current.account_id
  alarms_enabled     = true
  common_tags        = var.common_tags
  description        = "Best Pizza!!"
  filename           = "${path.module}/lambda.zip"
  name               = var.name
  region_name        = data.aws_region.current.name
  role_arn           = aws_iam_role.basic_execution_role.arn
  cloudwatch_kms_key = var.cloudwatch_kms_key
}
