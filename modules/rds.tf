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
  instance_class      = var.db_instance_class
  db_name             = var.db_dbname
  username            = var.db_username
  password            = var.db_password
  skip_final_snapshot = true
}
