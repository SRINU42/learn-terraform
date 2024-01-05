module "instance" {
    for_each =var.instance
    source = "./ec2"
    name = each.key
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
