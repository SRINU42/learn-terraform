variable "class" {
    default = "devops" 
}

output "class" {
    value = var.class
}

output "class1" {
    value = upper( var.class)
}

output "class2" {
    value = lower( var.class )
}