 resource "local_file" "ansible_inventory" {
  content = templatefile("templates/inventory.tmpl",
    {
      worker_ips = [
        for instance in aws_instance.worker:
          instance.public_ip 
      ]
      master_ips = [
        for instance in aws_instance.master:
          instance.public_ip 
      ]
    }
  )
  filename = "../ansible/hosts"
}