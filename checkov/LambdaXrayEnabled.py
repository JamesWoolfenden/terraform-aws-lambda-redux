from checkov.terraform.checks.resource.base_resource_value_check import BaseResourceValueCheck
from checkov.common.models.enums import CheckCategories


class LambdaXrayEnabled(BaseResourceValueCheck):
    def __init__(self):
        name = "X-ray tracing is enabled for Lambda"
        id = "CKV_AWS_999"
        supported_resources = ['aws_lambda_function']
        categories = [CheckCategories.GENERAL_SECURITY]
        super().__init__(name=name, id=id, categories=categories, supported_resources=supported_resources)


    def get_inspected_key(self):
        return "tracing"

       # return "tracing/[0]/mode"


check = LambdaXrayEnabled()
