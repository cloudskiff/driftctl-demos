# driftctl 0.4.0 Demo


### Steph
* Release overview
  * Terraform modules support
  * SQS/SNS
  * AWS Access Denied support
  * Signed releases
  * & much more
* Community news:
  * Initial public ROADMAP.md & LIMITATIONS.md
  * CloudFormation Launch Stack
  * MacPorts availability
  * All-contributors
  * Special thanks to our 0.4.0 contributors! Suzuki Shota (@shota0809), @sfenman, and Herby Gillot (@herbygillot)

### Martin
* Handle Access denied errors when listing resources by triggering alerts (#152) @Martinfr

### William
* Add support for terraform modules (#150) @eliecharra
* Add resource aws_sqs_queue and aws_sqs_queue_policy (#170) @William

### Elie
* Sign releases using PGP (#205) @eliecharra
* skip warnings on commented out and empty lines (#178) @sfenman
* Return exit code 1 when infrastructure not in sync (#156) @eliecharra
