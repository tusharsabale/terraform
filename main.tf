/*resource "aws_instance" "web-2" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}*/

resource "aws_instance" "web-2" {
  count = 3
  
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "${var.instance_name}-${count.index + 1}"
  }
}
