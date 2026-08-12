module "web_server" {
  source = "./modules/ec2-instance"

  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  instance_name = var.instance_name
}

module "web_server_2" {
  source = "./modules/ec2-instance"

  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  instance_name = "terraform-web-server-2"
}

output "web_server_public_ip" {
  value = module.web_server.public_ip
}

output "web_server_2_public_ip" {
  value = module.web_server_2.public_ip
}



