# Elastic Compute Cloud - EC2

### Steps for creating an EC2 instance

1. AMI
2. Instance type (t2.micro - Free tier)
3. Instance Details
   3.1 Number of instances
   3.2 Purchase option (on-demand by default)
   3.3 Network (default VPC)
   3.4 Subnet (availabilty zone - randomized)
   3.5 Auto-assign Public IP (enable)
   3.6 Placement group - High performance computing
   3.7 Capacity Reservation - Reserve capacity for availability zone
   3.8 IAM role
   3.9 Shutdown behavior
   3.10 Enable termination protection (Protect against accidental)
   3.11 Monitoring (Cloudwatch - default is monitor every five minute)
   3.12 Tenancy (Shared or dedicated hardware)
   3.13 Elastic Inference
   3.14 T2/T3 Unlimited
   3.15 Advance Details - Where you can pass bootstrap groups
4. EBS Volume (Root - Magnetic is standard)
5. Add tags (e.g Name, Department, etc)
6. Security groups (Virtual Firewall for enabling communication between ports)
7. Secure your Private Key for using SSH

Connecting through SSH using terminal

```bash
ssh ec2-user@ip-address -i myKey.pem
```

### Turning EC2 into a web server

Install the web server

```bash
yum install httpd -y
```

Going to directory where the pages are served

```bash
cd /var/www/html
```

Put a index.html with content in that directory

Starting the web server

```bash
service httpd start
```

Ensure that the web server will turn back on when EC2 instance goes down and up again

```bash
chkconfig on
```

#### Useful commands when working from terminal

Give a root priviledge

```bash
sudo su
```

Lock permissions down for a file

```bash
chmod 400 filename
```

Operating system updates

```bash
yum update -y
```

Creating SSH keys

```bash
ssh-keygen -f br-ec2-key
```
