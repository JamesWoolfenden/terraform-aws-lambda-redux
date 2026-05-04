resource "aws_iam_role_policy" "lambda" {
  # checkov:skip=CKV_AWS_290: Policy requires broad access for this module to function
  # checkov:skip=CKV_AWS_355: Policy requires broad access for this module to function
  # checkov:skip=CKV_AWS_272: Policy requires broad access for this module to function
  # checkov:skip=CKV_AWS_356: Policy requires broad access for this module to function
  count = var.passrole == false ? 1 : 0
  role  = aws_iam_role.lambda.0.id

  policy = data.aws_iam_policy_document.lambda.json
}
