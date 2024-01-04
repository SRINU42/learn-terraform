variable "class" {
    default = "devops" 
}

variable "class1" {
    default = "DEVOPS" 
}

output "class" {
    value = var.class
}

output "class1" {
    value = upper( var.class)
}

output "class2" {
    value = lower( var.class1 )
}

variable "fruits" {
    default = [ "apple" , "orange", "mango" ]
}
output "fruits-count" {
    value = length(var.fruits)
}

variable "classes" {
    default = {
        devops ={
            name = "DevOps"
            topics = [ "jenkins", "terrafolrm", "docker"]
        }
        aws = {
            name = "aws"
            topics = ["s3", "rout53","ami", "ec2" ]
        }
    }
}

output "devops_topics" {
    value = var.classes["devops"]["topics"]
}

output "aws_topics" {
    value = var.classes["aws"]["topicd"]
}