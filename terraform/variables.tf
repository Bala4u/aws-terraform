variable "aws_access_key" {AKIAQAL5536T2FV6OJOU}

variable "aws_secret_key" {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}

variable "region" {us-west-2}

variable "account_id" {000800972711}

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
