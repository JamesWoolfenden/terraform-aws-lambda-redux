resource "aws_iam_role" "lambda" {
  count = var.passrole == false ? 1 : 0

  assume_role_policy = <<HERE
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Service": "lambda.amazonaws.com"
            },
            "Action": "sts:AssumeRole"
        }
    ]
}
HERE

  tags = var.common_tags
}


variable "passrole" {
  type    = bool
  default = false
}
