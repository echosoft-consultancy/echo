provider "aws" {
  region     = "us-west-1"
}

resource "aws_elasticsearch_domain" "elasticsearch" {
  domain_name           = "echo"
  cluster_config {
    instance_type = "t2.micro.elasticsearch"
  }

  advanced_options {
    "rest.action.multi.allow_explicit_index" = "true"
  }

  access_policies = <<CONFIG
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "es:*",
            "Principal": "*",
            "Effect": "Allow",
            "Condition": {
                "IpAddress": {"aws:SourceIp": ["149.12.13.233y/32"]}
            }
        }
    ]
}
CONFIG

  ebs_options {
    ebs_enabled = true
    volume_size = 10
  }

  snapshot_options {
    automated_snapshot_start_hour = 23
  }

  tags {
    Domain = "echo"
  }
}
