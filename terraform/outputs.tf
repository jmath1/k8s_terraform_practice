output "master_public_ips" {
  value = [
    for instance in aws_instance.master:
      instance.public_ip 
  ]
}

output "worker_public_ips" {
  value = [
    for instance in aws_instance.worker:
      instance.public_ip 
  ]
}
