#!/usr/bin/env bash

cd helloworldjava
printf '\n\nBuilding the Java Lambda Function!\n\n'
mvn clean verify
if [ $? -ne 0 ]; then
  printf '\n\nJava application build failed! No new Lambda Function will be deployed!!!i\n'
  exit -1
fi
export TerraformVersion=0.12.20 && cd /tmp && curl -o terraform.zip https://releases.hashicorp.com/terraform/${TerraformVersion}/terraform_${TerraformVersion}_linux_amd64.zip && unzip terraform.zip && mv terraform /usr/bin
terraform --version
cd $CODEBUILD_SRC_DIR/terraform

cd ..
printf '\n\nStarting the Terraforming!\n\n'
cd terraform
terraform plan -out=plan.out
terraform apply plan.out
