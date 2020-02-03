resource "aws_api_gateway_rest_api" "hello_world_api" {
  name        = "hello_world_api"
  description = "Hello, world API"
}

resource "aws_api_gateway_resource" "hello_world_api_gateway" {
  rest_api_id = "aws_api_gateway_rest_api.hello_world_api"
  parent_id   = "aws_api_gateway_rest_api.hello_world_api.root_resource_id"
  path_part   = var.api_path
}

resource "aws_api_gateway_method" "hello_world_method" {
  rest_api_id   = "aws_api_gateway_rest_api.hello_world_api"
  resource_id   = "aws_api_gateway_resource.hello_world_api_gateway"
  http_method   = var.hello_world_http_method
  authorization = "NONE"
}