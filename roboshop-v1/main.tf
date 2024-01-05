module "instance" {
    for_each =var.instance
    source = "./ec2"
    name = each.value
}

variable "instance" {
    default ={
        frontend = {}
        mongodb = {}
        catalogue = {}
        redis = {}
        user = {}
        cart = {}
        mysql = {}
        shipping = {}
        rabbitmq = {}
        payment = {}
        dispatch = {}
    }

}
