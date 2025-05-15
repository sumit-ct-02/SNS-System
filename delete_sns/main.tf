    terraform {
        backend "s3" {
            bucket = "backstage-interns-project"
            key    = "project/terraform.tfstate"
            region = "ap-south-1"
            encrypt = true
            use_lockfile = true
        }
    }
    provider "aws" {
    region = var.region
    }
