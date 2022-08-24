variable "ssh_public_key_file" {
  description = "value of ssh public key"
  type        = string
  default     = "../sandbox.pub"
}
variable "ssh_key_name" {
  description = "value of ssh public key"
  type        = string
  default     = "aws_key"
}

variable "number_of_masters" {
  description = "number of master EC2 Instances to build for Kubernetes"
  type        = number
  default     = 1
}

variable "number_of_workers" {
  description = "number of worker EC2 Instances to build for Kubernetes"
  type        = number
  default     = 2
}