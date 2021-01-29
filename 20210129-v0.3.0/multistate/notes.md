# Notes

```shell
aws_lambda_function.driftctl-version_lambda_name.LastModified
aws_lambda_function.driftctl-version_lambda_name.Environment.0.Variables.LATEST_VERSION
```

AWS_REGION="eu-west-3" driftctl-dev scan --from tfstate+s3://maga2020/tfstates/terraform.tfstate --from tfstate://./iam/terraform.tfstate --from tfstate+s3://maga2028/tfstates/terraform.tfstate