resource "aws_iam_role_policy" "lambda" {
  count = var.passrole == false ? 1 : 0
  role  = aws_iam_role.lambda.0.id

  policy = data.aws_iam_policy_document.lambda.json
}
