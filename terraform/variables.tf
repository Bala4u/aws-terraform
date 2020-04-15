variable "aws_access_key" {
  # set aws access key
  default = "##############"
}

variable "aws_secret_key" {
  # set aws secret key
  default = "#####################/"
}

variable "region" {
  # set aws region
  default = "us-west-2"
}

variable "account_id" {
default = "########"
}


variable "lambda_payload_filename" {
  default = "../helloworldjava/target/helloworldjava-0.1.0-SNAPSHOT.jar"
}

variable "lambda_function_handler" {
  default = "uk.co.danielbryant.exp.helloworld.HelloLambdaHandler"
}

variable "lambda_runtime" {
  default = "java8"
}

variable "api_path" {
  default = "helloworld"
}

variable "hello_world_http_method" {
  default = "POST"
}

variable "api_env_stage_name" {
  default = "beta"
}
