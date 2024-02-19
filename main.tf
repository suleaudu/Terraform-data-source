provider "aws" {
    region = us-east-1
    #Access_key = ""
    #Secret_key = ""
}

resource "aws_instance" "web-ec2" {
    instance_type = var.instance_type
    tags = {
        Name = "Terraform EC2"
    }
}
data "aws-instance" "myawsinstance" {
    filter {
        name = "tag:Name"
        values = ["local.instance_name"]

    }
    depends_on = [aws_instance.web-ec2]
}
output "myinstanceIP" {
    value = data.awsinstance.public-ip
}