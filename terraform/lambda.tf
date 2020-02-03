resource "aws_lambda_function" "Helloworld_lambda" {
  filename      = var.lambda_payload_filename
  function_name = "hello_function"

  role             = "aws_iam_role.lambda_apigateway_iam_role.arn"
  handler          = var.lambda_function_handler
  source_code_hash = "base64sha256(file(var.lambda_payload_filename))"
  runtime          = "java 8"

}

