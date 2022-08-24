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