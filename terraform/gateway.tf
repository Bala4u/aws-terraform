
resource "aws_api_gateway_rest_api" "hello_world_api" {
  name        = "ServerlessTerraform_api"
  description = "Terraform  Application hello_world_api"
}
resource "aws_api_gateway_resource" "proxy" {
   rest_api_id = aws_api_gateway_rest_api.hello_world_api.id
   parent_id   = aws_api_gateway_rest_api.hello_world_api.root_resource_id
   path_part   = "{proxy+}"
}

resource "aws_api_gateway_method" "proxy" {
   rest_api_id   = aws_api_gateway_rest_api.hello_world_api.id
   resource_id   = aws_api_gateway_resource.proxy.id
   http_method   = "ANY"
   authorization = "NONE"
 }