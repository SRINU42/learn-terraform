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

output "fruits_1" {
    value = var.fruits[0]
}

output "fruits_2" {
    value = var.fruits[2]
}

output "fruits_3" {
    value = element(var.fruits, 4)
}


variable "classes" {
    default = {
        devops ={
            name = "DevOps"
            topics = [ "jenkins", "terrafolrm", "docker"]
        }
        aws = {
            name = "aws"
            # topics = ["s3", "rout53","ami", "ec2" ]
        }
    }
}

output "devops_topics" {
    value = var.classes["devops"]["topics"]
}

output "aws_topics" {
    value = lookup(lookup( var.classes, "aws", null ), "topics", "No Topics")
}