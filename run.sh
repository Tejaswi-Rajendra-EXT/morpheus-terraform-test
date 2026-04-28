#!/bin/bash

set -e
set -x

echo "===== Terraform Execution Started ====="

echo "FILE_NAME: ${FILE_NAME}"
echo "FILE_CONTENT: ${FILE_CONTENT}"

terraform init

terraform apply -auto-approve \
  -var="file_name=${FILE_NAME}" \
  -var="file_content=${FILE_CONTENT}"

echo "===== Terraform Execution Completed ====="