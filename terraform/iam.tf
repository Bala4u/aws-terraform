resource "aws_iam_role" "lambda_apigateway_iam_role" {
  #name = "lambda_apigateway_iam_role"
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Action": "sts:AssumeRole",
        "Principal": {
          "Service": "lambda.amazonaws.com"
        },
        "Effect": "Allow",
        "Sid": ""
      }
    ]
}
EOF
}