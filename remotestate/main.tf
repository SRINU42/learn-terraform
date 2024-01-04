terraform {
  backend "s3" {
    bucket = "tb-v3"
    key    = "sample.terraform.tfstate"
    region = "us-east-1"
  }
}

output "demo" {
    value = "HelloWorld"
}