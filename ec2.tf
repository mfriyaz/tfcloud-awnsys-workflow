resource "aws_instance" "MyEC2" {
  ami           = "ami-0f2eac25772cd4e36"
  instance_type = var.instance_type

}




