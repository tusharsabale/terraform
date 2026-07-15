module "web_instance" {
  source = "../ec2_module"

  ami           = "ami-01b799c439fd5516a"
  instance_type = "t2.micro"
  instance_name = "web-instance-2"
}

output "instance_public_ip" {
  value = module.web_instance.instance_public_ip
}