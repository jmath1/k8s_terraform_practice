data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "master" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  key_name      = var.ssh_key_name
  tags = {
    Name = "master"
    Type = "master"
  }
  vpc_security_group_ids = [aws_security_group.main.id]
}

resource "aws_instance" "worker1" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  key_name      = var.ssh_key_name
  tags = {
    Name = "worker1",
    Type = "worker"
  }
  vpc_security_group_ids = [aws_security_group.main.id]
}


resource "aws_instance" "worker2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  key_name      = var.ssh_key_name

  tags = {
    Name = "worker2",
    Type = "worker"
  }
  vpc_security_group_ids = [aws_security_group.main.id]
}