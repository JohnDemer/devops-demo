terraform{
	required_providers{
		aws = {
			source = "hashicorp/aws"
			version = "~> 5.0"
		}
	}
}s

resource "aws_instance" "app_center" {
	ami = "ami-0c02fb55956c7d316"
	instance_type = "t2.micro"
	
	tags = {
		Name = "devops-demo-server"
		Environment = "Development"
		ManageBy = "Terraform"
	}

	user_data = <<-EOF
		#!/bin/bash
		apt-get update
		apt-get install -y docker.io
		docker run -d -p 80:8080 JohnDemer/devops-demo:latest
	
	EOF
}


output "server_ip"{
	value = aws_instance.app_server.public_ip
}	