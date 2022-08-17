variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "cluster_name" {
    type = string
    default = "dev"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

