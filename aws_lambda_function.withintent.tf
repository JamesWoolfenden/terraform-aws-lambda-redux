resource "aws_lambda_function" "withintent" {
  # checkov:skip=CKV_AWS_115: ADD REASON
  # checkov:skip=CKV_AWS_116: ADD REASON
  description   = var.description
  function_name = var.name
  filename      = var.filename
  handler       = var.handler
  layers        = var.layers
  memory_size   = var.memory_size
  role          = var.passrole == false ? aws_iam_role.lambda.0.arn : var.role_arn
  runtime       = var.runtime
  s3_bucket     = var.s3_bucket
  s3_key        = var.s3_key
  tags          = var.common_tags
  timeout       = var.timeout

  environment {
    variables = var.envvar
  }

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = var.security_group_ids
  }


  lifecycle {
    ignore_changes = [
      last_modified,
      tags,
    ]
  }

  tracing_config {
    mode = "PassThrough"
  }
}
