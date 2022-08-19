# Security Groups

### Exam tips

- All Inbound traffic is blocked by default.
- All Outbound traffic is allowed.
- Changes to Security Groups take effect immediately.
- You can have any number of EC2 instances within a security group.
- YOu can have multiple security groups attached to EC2 instances.
- Security groups are _STATEFUL_.
- If you create an inbound rule allowing traffic in, that traffic is automatically allowed back out again.
- You cannot block specific IP adresses using _Security Groups_, instead use _Network Access Control Lists._
- You can specify allow rules, but not deny rules.
