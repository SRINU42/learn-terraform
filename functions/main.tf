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