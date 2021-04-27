# README.md

(Those are reminder notes only, nothing ready for public consumption.)

The base service needs to be initialized first.

```
export AWS_REGION="us-east-1"
export AWS_PROFILE="cloudskiff-demo"
cd base; terraform apply; cd ..
cd iam; terraform apply; cd ..
cd vpc; terraform apply; cd ..
cd s3; terraform apply; cd ..
```

A standard driftctl scan run:

```shell
driftctl scan --from tfstate://./iam/terraform.tfstate --from tfstate://./vpc/terraform.tfstate --from tfstate://./s3/terraform.tfstate
```

JSON output

```shell
driftctl scan --from tfstate://iam/terraform.tfstate --from tfstate://vpc/terraform.tfstate --from tfstate://s3/terraform.tfstate --output json://output.json 
```

JQ example:

```shell
jq '.coverage' < output.json
```

Filters exemple:

```shell
driftctl scan --from tfstate://iam/terraform.tfstate --from tfstate://vpc/terraform.tfstate --from tfstate://s3/terraform.tfstate --filter "Type=='aws_security_group_rule'"
```


## Tabs

- https://console.aws.amazon.com/vpc/home?region=us-east-1#securityGroups:
- https://s3.console.aws.amazon.com/s3/buckets/hashitalks-demo-hljs43?region=us-east-1&tab=objects
- https://console.aws.amazon.com/iam/home?region=us-east-1#/users

## After the fashion

```bash
cd s3; terraform destroy; cd ..
cd iam; terraform destroy; cd ..
cd vpc; terraform destroy; cd ..
cd base; terraform destroy; cd ..
```
