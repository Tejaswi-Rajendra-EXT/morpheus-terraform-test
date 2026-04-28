#!/bin/bash

set -e
set -x

echo "===== Terraform Execution Started ====="

terraform init

terraform apply -auto-approve \
  -var="file_name=${FILE_NAME}" \
  -var="file_content=${FILE_CONTENT}"

echo "===== Terraform Execution Completed ====="