resource "aws_ami_from_instance" "ami" {
  name               = "${var.COMPONENT}-${var.APP_VERSION}"
  source_instance_id = aws_instance.ec2.id
  tags = {
    Name = "${var.COMPONENT}-${var.APP_VERSION}"
    VERSION = var.APP_VERSION
  }
}