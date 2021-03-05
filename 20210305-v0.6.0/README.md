# driftctl demo 0.6

## Changelog

- Users can now use all states from within a directory or S3 bucket
- New AWS resources
  - KMS (aws_kms_key, aws_kms_alias)
  - ECR
- New GitHub resources
  - Teams (github_team, github_membership, github_branch_protection)


## Demo 

```bash
export AWS_PROFILE="cloudskiff-demo"
export AWS_REGION="us-east-1"

cd base; terraform init; terraform apply; cd ..
cd kms; terraform init; terraform apply; cd ..

```

```
driftctl scan --from tfstate+s3://driftctl-tfstates/kms.tfstate
```

States: 	driftctl-tfstates

export GITHUB_ORGANIZATION=sj-qa-1-org
export GITHUB_TOKEN=321abc

## URLs 

- https://s3.console.aws.amazon.com/s3/buckets/driftctl-tfstates?region=us-east-1&tab=objects
- https://github.com/sj-qa-1-org
