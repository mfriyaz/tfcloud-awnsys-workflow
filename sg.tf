resource "aws_security_group" "demo_var" {
  name = "demo_var_new"
  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.Client_ip]
  }
  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    //cidr_blocks = ["${aws_eip.Myip.public_ip/32}"]
    cidr_blocks = ["${aws_eip.Myip.public_ip}/32"]
  }
lifecycle {
  create_before_destroy = true

}

}