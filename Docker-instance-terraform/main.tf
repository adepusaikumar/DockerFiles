resource "aws_instance" "docker_instance" {
  ami           = data.aws_ami.joindevops.id
  instance_type = "t3.micro"
  user_data = file("./bootstrap.sh")

  tags = {
    Name = "DockerInstance"
  }
  
  root_block_device {
    volume_size = 50
    volume_type = "gp3"
    delete_on_termination = true
  }
  vpc_security_group_ids = ["sg-05f6d4e8dbe538e8e"]
}

output "instance_public_ip" {
  value = aws_instance.docker_instance.public_ip
}