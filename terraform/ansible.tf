resource "local_file" "ansible_inventory" {
  content = templatefile("templates/inventory.tmpl",
    {
      masters = [
        for instance in aws_instance.master:
          "${instance.tags.Name}	ansible_host=${instance.public_ip}"

      ]
      workers = [
        for instance in aws_instance.worker:
          "${instance.tags.Name}	ansible_host=${instance.public_ip}"
      ]
    }
  )
  filename = "../ansible/inventory"
}

 resource "local_file" "hosts_file" {
  content = templatefile("templates/hosts.tmpl",
    {
      masters = [
        for instance in aws_instance.master:
          "${instance.public_ip}  ${instance.tags.Name}"

      ]
      workers = [
        for instance in aws_instance.worker:
          "${instance.public_ip}  ${instance.tags.Name}"
      ]
    }
  )
  filename = "../ansible/hosts"
}