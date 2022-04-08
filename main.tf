provider "aws" {
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    region = var.region
}

resource "aws_instance" "tfc-test" {
    ami = var.images.us-east-2
    availability_zone = "us-east-2a"
    instance_type = "t2.small"
    key_name = "id_rsa_panw"
    subnet_id = "subnet-072efd16f0ae2f02c"
    vpc_security_group_ids = [
      "sg-056f0e13208015325"
    ]
    associate_public_ip_address = true
    root_block_device {
        volume_type           = "gp2"
        volume_size           = 8
        delete_on_termination = true
  }
  tags = {
    "Name" = "tfc-test"
  }
}
