# README.md

The base service needs to be initialized first.

```bash
SERVICE=base make apply
```

Setup IAM

```bash
SERVICE=iam make apply
```

Setup VPC

```bash
SERVICE=vpc make apply
```

Setup S3

```bash
SERVICE=s3 make apply
```

Setup Route53

```bash
SERVICE=route53 make apply
```


