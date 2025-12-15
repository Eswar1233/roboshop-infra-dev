variable "project" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "frontend_sg_name"{
  default = "frotnend"
}

variable "frontend_sg_description"{
  default = "created sg for frontend instance"
}


variable "bastion_sg_name"{
  default = "bastion"
}

variable "bastion_sg_description"{
  default = "created sg for bastion instance"
}

//for both bastion and vpn mongodb ports
variable "mongodb_ports" {
  default = [22,27017]
}

variable "redis_ports_vpn" {
  default = [22,6379]
}

variable "mysql_ports_vpn" {
  default = [22,3306]
}

variable "rabbitmq_ports_vpn" {
  default = [22,5672]
}


variable "redis_ports_bastion" {
  default = [22,6379]
}

variable "mysql_ports_bastion" {
  default = [22,3306]
}

variable "rabbitmq_ports_bastion" {
  default = [22,5672]
}


