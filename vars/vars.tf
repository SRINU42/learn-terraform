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
    value = "value of sample- ${var.sample}, value of sample1 - ${var.sample1}"
}

## ------------------
## Plain
variable "course" {
    default = "DevOps training"
}

## List
variable "courses" {
    default = [
        "DevOps",
        "AWS",
        "Python"
    ]
}

## Map
variable "course_details" {
    default = {
        DevOps = {
            name = "DevOps"
            timing = "10am"
            duration = "90 Days"
        }
        AWS = { 
            name = "AWS"
            timing = "11am"
            duration = "30 Days"
        }
    }
}

output "course" {
    value = var.course
}

output "courses" {
    value = var.courses[2]
}

output "course_details" {
    value = var.course_details["DevOps"]
}

variable "env" {}

output "env" {
    value = var.env
}