# Terraform Examples

### Provider: AWS

#### Single Web Server
Deploys a single Ubuntu instance as a t2.micro and runs a busybox web server on port 8080. Also deploys and attaches a security group to allow inbound connections on the same port. Outputs the public IP of the instance.

#### Autoscaling Web Server Cluster
Deploys a classic load balancer fronted autoscaling group of Ubuntu web servers that spans all  Availability Zones. Includes health checks for created instances.

#### Backend: S3
Deploys an S3 bucket with versioning for remote state, and a DynamoDB table for state locking.

#### Multifile Autoscaling Web Server Cluster
Combines the S3 backend with the autoscaling web server cluster and adds an RDS instance. The web server cluster reads the remote state file of the RDS instance to get its DNS name and port. The configs are organized into a hierarchical file structure with vars, outputs and resources broken out into their own .tf configuration files. 
