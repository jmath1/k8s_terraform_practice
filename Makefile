k8s:
	- terraform -chdir=terraform init
	- terraform -chdir=terraform apply -refresh=false -parallelism=15 --input=false
	- ansible-playbook ansible/setup_all.yml
	