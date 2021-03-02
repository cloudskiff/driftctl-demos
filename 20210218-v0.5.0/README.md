# README.md

(Those are reminder notes only, nothing ready for public consumption.)

## Environment

```
export GITHUB_TOKEN=abcde1234
export GITHUB_ORGANIZATION=yadda
export AWS_REGION=us-east-1
export AWS_PROFILE=cloudskiff-demo

```

The base service needs to be initialized first.

```
cd base; terraform apply; cd ..
cd github; terraform apply; cd ..

cd iam; terraform apply; cd ..
cd vpc; terraform apply; cd ..
cd s3; terraform apply; cd ..
cd route53; terraform apply; cd ..
cd cloudfront; terraform apply; cd ..
```

A standard driftctl scan run: 

```
driftctl scan --from tfstate://./iam/terraform.tfstate --from tfstate://./vpc/terraform.tfstate --from tfstate://./s3/terraform.tfstate
```

For GitHub: 

```
driftctl-0.5 scan --to github+tf
```

## Demo 

- GitHub 
  - enable wikis

- AWS
  - add a SG rule inline to show the warning
  - add an IAM key to show the output
  - use an old limited policy to show the warning
  - break route53 check with region sources 
  - create a dynamodb index + autoscaling (to show policies)
  - add a behavior in cloudformation

## Tabs

- 1
- 2
- 3

## After the fashion

```
cd s3; terraform destroy; cd ..
cd iam; terraform destroy; cd ..
cd vpc; terraform destroy; cd ..
cd base; terraform destroy; cd ..
```

