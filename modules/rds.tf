terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_db_instance" "mydb" {
  identifier_prefix   = "mydb-1"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = var.instance_class
  db_name             = var.db_name
  username            = var.username
  password            = var.password
  skip_final_snapshot = true
}
