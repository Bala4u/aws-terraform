resource "aws_api_gateway_rest_api" "hello_world_api" {
  name        = "hello_world_api"
  description = "Hello, world API"
}

resource "aws_api_gateway_resource" "hello_world_api_gateway" {
  rest_api = "aws_api_gateway_rest_api.hello_world_api"
  parent   = "aws_api_gateway_rest_api.hello_world_api.root_resource"
  path_part   = var.api_path
}

resource "aws_api_gateway_method" "hello_world_method" {
  rest_api   = "aws_api_gateway_rest_api.hello_world_api"
  resource  = "aws_api_gateway_resource.hello_world_api_gateway"
  http_method   = var.hello_world_http_method
  authorization = "NONE"
}