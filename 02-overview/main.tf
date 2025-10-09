terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.15.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0360c520857e3138f" # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t3.micro"
}
