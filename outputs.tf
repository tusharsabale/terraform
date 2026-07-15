/*output "instance_public_ip" {
  value = aws_instance.web-2.public_ip
}*/

output "instance_public_ip" {
  value = aws_instance.web-2[*].public_ip
}
