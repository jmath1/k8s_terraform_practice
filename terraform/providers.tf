terraform {
  backend "s3" {
    bucket = "ycd-terraform-state-sandbox"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.27.0"
    }
  }
}
