<h3>
This repo is for practicing Kubernetes, Terraform, and Ansible. I will be achieving the following objectives
</h3>

- [x] Create EC2 instances and security groups that establish SSH access for workers and masters
- [x] Use S3 to hold Terraform state
- [x] Update Terraform to make dynamic amounts of worker and master nodes depending on input variables
- [x] Use Terraform templating to create inventory file for Ansible to use
- [ ] Use Ansible to install and configure Kubernetes on the infrastructure created by Terraform
- [ ] Deploy a basic website using Kubernetes
- [ ] Use Terraform to secure the Kubernetes cluster so that the SSH ports are only available from within a VPN.
- [ ] Use Terraform to make the application only reachable from a load balancer.
- More Objectives TBD