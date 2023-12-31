
resource "aws_instance" "web" {
  for_each      = var.instance
  ami           = data.aws_ami.example.id
  instance_type = lookup(each.value, "instance_type", "t3.small")

  tags = {
    Name = each.key
  }
}

data "aws_ami" "example" {
  owners = ["973714476881"]
  most_recent      = true
  name_regex       = "^Centos-8-DevOps-Practice"  

}

variable "instance" {
    default = {
    #  frontend ={
    #    name = "frontend"
    #    instance_type = "t3.micro"
    #  }

      frontend ={
        name = "frontend"
      
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