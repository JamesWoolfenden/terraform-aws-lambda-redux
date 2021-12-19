name      = "PizzaOrderProcessor"
s3_bucket = "wilbur.lambda-553700203877-artifacts"
role      = "lambda_basic_execution"
common_tags = {
  modulename = "pizza"
}
kms_key_id = "arn:aws:kms:eu-west-2:680235478471:key/0ec1cf1b-dca9-4f76-9aac-d5739e02fd10"
