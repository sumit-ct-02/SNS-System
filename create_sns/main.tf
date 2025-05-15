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

    resource "aws_sns_topic" "my_topic" {
    name = var.sns_topic_name
    display_name = var.sns_display_name
    }

    resource "aws_sns_topic_subscription" "email_sub" {
    topic_arn = aws_sns_topic.my_topic.arn
    protocol  = "email"
    endpoint  = var.email_address
    }
