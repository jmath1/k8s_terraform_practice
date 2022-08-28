<h3>
This repo is for practicing Kubernetes, Terraform, and Ansible. I will be achieving the following objectives
</h3>

- [x] Create EC2 instances and security groups that establish SSH access for workers and masters
- [x] Use S3 to hold Terraform state
- [x] Update Terraform to make dynamic amounts of worker and master nodes depending on input variables
- [x] Use Terraform templating to create inventory file for Ansible to use
- [x] Use Ansible to install and configure Kubernetes on the infrastructure created by Terraform
- [ ] Deploy a basic website using Kubernetes
- [ ] Lock down ports and use a private subnet where necessary. Things are too open currently.
- [ ] Currently the cluster cannot be accessed remotely. It's advertise address is a private IP. Make it so that the user can run kubectl commands securely from the machine.
- [ ] Use Terraform to secure the Kubernetes cluster so that the SSH ports are only available from within a VPN.
- [ ] Use Terraform to make the application only reachable from a load balancer.
- More Objectives TBD

<h5>Minor Backlog</h5>
- [ ] Tempate ansible.cfg using terraform so that filenames are not hardcoded in the .cfg file
- [ ] Optimize ansible playbooks so that they arent attempting to install dependencies that are already installed
- [ ] Dont create a new join token every time setup_workers.yaml is called