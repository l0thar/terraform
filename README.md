# Terraform Examples

### Provider: Alibaba
Simple projects using Terraform to spin up resources in Alibaba.

#### Single VPC
Single .tf file that creates a new VPC in Virginia with a single vswitch subnet.

#### Modularized Multi-VPC Environment
Expansion of the single VPC project. This creates a VPC module that is used to spin up two VPCs, one in Virginia and one in Shanghai.

### Provider: AWS
These example projects are built on those found in __Terraform: Up and Running__, by Yevgeniy Brikman. Enough had changed in Terraform since the first edition was released in 2017 that I found myself having to dig into the Terraform documentation frequently in order to figure out why the code in the book didn't work anymore. These examples are verified to work with Terraform v0.12.

#### Single Web Server
Deploys a single Ubuntu instance as a t2.micro and runs a busybox web server on port 8080. Also deploys and attaches a security group to allow inbound connections on the same port. Outputs the public IP of the instance.

#### Autoscaling Web Server Cluster
Deploys a classic load balancer fronted autoscaling group of Ubuntu web servers that spans all  Availability Zones. Includes health checks for created instances.

#### Backend: S3
Deploys an S3 bucket with versioning for remote state, and a DynamoDB table for state locking.

#### Multifile Autoscaling Web Server Cluster
Combines the S3 backend with the autoscaling web server cluster and adds an RDS instance. The web server cluster reads the remote state file of the RDS instance to get its DNS name and port. The configs are organized into a hierarchical file structure with vars, outputs and resources broken out into their own .tf configuration files. 

#### Multi-Environment Web Server Cluster with Modules
Deploys the autoscaling web server cluster into stage and prod environments using web cluster and database modules to limit code re-use. Adds autoscaling schedules for the prod autoscaling group to scale up during business hours and back down at night.
