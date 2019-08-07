# Terraform Examples

## Provider: AWS

### Single Web Server
Deploys a single Ubuntu instance as a t2.micro and runs a busybox web server on port 8080. Also deploys and attaches a security group to allow inbound connections on the same port. Outputs the public IP of the instance.

### Autoscaling Web Server Cluster
Deploys a classic load balancer fronted autoscaling group of Ubuntu web servers that spans two Availability Zones. Includes health checks for created instances.
