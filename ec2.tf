resource "aws_instance" "r100c96" {
  ami           = var.aws_instance_my_infra_ami
  instance_type = "t2.micro"
  availability_zone = "ap-south-1b"
  key_name      = "aws-exam-testing"
  user_data = file("installcommand.sh")
  count = 0
  tags = {
    Name  = "Terraform-diff-linux-${count.index}"
  }
}
