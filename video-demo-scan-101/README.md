# video demo

cd base
terraform apply
cd ..

cd s3
terraform apply
cd ..

driftctl scan --from tfstate://./s3/terraform.tfstate
aws s3 mb s3://manual-bucket-for-demo
driftctl scan --from tfstate://./s3/terraform.tfstate

echo "aws_s3_bucket.manual-bucket-for-demo" >> .driftignore

aws s3 rb s3://manual-bucket-for-demo

