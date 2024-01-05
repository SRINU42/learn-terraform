
resource "aws_instance" "web" {
  for each      = var.instance
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"

  tags = {
    Name = var.instance
  }
}

data "aws_ami" "example" {
  owners = ["973714476881"]
  most_recent      = true
  name_regex       = "^Centos-8-DevOps-Practice"  

}

variable "instance" {
    default = {
      frontend ={
        name = "frontend"
        instance_type = "t3.micro"
      }
      catalogue = {
        catalogue = "catalogue"
        instance_type = "t3.nano"
      }
      cart = {
        cart = "cart"
        instance_type = "t3.nano"
      }
    }
}