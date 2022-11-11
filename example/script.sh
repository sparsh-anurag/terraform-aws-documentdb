#!/bin/bash

aws kms encrypt \
  --key-id 0e277743-6827-4507-94cc-b58def888f3a \
  --region ap-south-1 \
  --plaintext fileb://document-db-creds-non-prod.yml \
  --output text \
  --query CiphertextBlob --profile non-prod-eurokids \
  > document-db-creds-non-prod.yml.encrypted
