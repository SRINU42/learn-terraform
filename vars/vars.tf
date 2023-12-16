variable "sample" {
    default = 100
}

variable "sample1" {
    default = " Hello WOrld"
}

output "sample" {
    value = var.sample
}

output "sample1" {
    value = var.sample1
}

output "sample-ext" {
    value = "value of sample- ${var.sample1}"
    value = "value of sample1 - ${var.sample}"
}