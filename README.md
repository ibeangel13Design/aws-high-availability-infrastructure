AWS High-Availability Infrastructure Project

Overview

This project involved designing and deploying a highly available, two-tier AWS infrastructure for a web application.

The goal was to build an architecture that could support multiple web servers, distribute traffic efficiently, provide shared storage, and monitor the infrastructure for performance and availability.

Architecture

The infrastructure was built in the US East (Ohio) region ("us-east-2") and included:

- A custom VPC with public and private subnets across multiple Availability Zones
- A public subnet containing an internet-facing Application Load Balancer and jump server
- Private subnets containing the web servers
- A NAT Gateway providing outbound internet access for resources in the private subnets
- Amazon EFS for shared storage across the web servers
- An Auto Scaling Group for managing the web server instances
- Amazon Route 53 for DNS
- AWS Certificate Manager (ACM) for HTTPS/SSL
- Datadog for infrastructure monitoring
- Slack integration for monitoring alerts

Key Components

Networking

A custom VPC was created with separate public and private subnets across Availability Zones to provide network isolation and high availability.

Load Balancing and Auto Scaling

An Application Load Balancer was configured to distribute incoming traffic across the web servers. An Auto Scaling Group was used to maintain the required number of healthy web server instances.

Shared Storage

Amazon EFS was configured as shared storage for the web servers, allowing the instances to access the same files from a common file system.

Monitoring and Alerting

Datadog was configured to monitor infrastructure metrics including CPU, memory, and disk usage. Alerts were integrated with Slack to provide notifications when defined thresholds were reached.

DNS and HTTPS

Amazon Route 53 was used for DNS configuration, while AWS Certificate Manager was used to provision and validate the SSL certificate for HTTPS access.

Technologies Used

- Amazon VPC
- Amazon EC2
- Application Load Balancer
- Auto Scaling
- Amazon EFS
- Amazon Route 53
- AWS Certificate Manager
- NAT Gateway
- Datadog
- Slack
- Nginx
- Ubuntu Linux

Project Outcome

The completed architecture demonstrated how a highly available web application environment can be designed using AWS services across multiple Availability Zones.

The project also provided practical experience with AWS networking, compute, storage, load balancing, auto scaling, DNS, HTTPS, monitoring, and infrastructure troubleshooting.

Documentation

Detailed project documentation, including the implementation process and screenshots, is available in the project files in this repository.
