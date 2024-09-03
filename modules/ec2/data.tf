data "aws_ami" "this" {
  most_recent = true

  filter {
    name = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }
  owners = ["amazon"]
}
data "aws_availability_zones" "availability_zone" {
  
}