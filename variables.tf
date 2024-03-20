variable "region" {
  type    = string
  default = "us-east-1"
}


variable "cidr-block-vpc" {
  type    = string
  default = "10.0.0.0/16"
}

variable "tenancy" {
  default = "default"
}

variable "availability-zone" {
  type    = string
  default = "us-east-1a"
}

variable "cidr-block-subnet1" {
  type    = string
  default = "10.0.0.0/24"
}

variable "cidr-block-subnet2" {
  type    = string
  default = "10.0.2.0/24"
}

variable "publicCIDR" {
  type    = string
  default = "0.0.0.0/0"
}

variable "bucket-name" {
  type    = string
  default = "symp-tombstone-silver"
}

variable "key" {
  type    = string
  default = "pedroteste"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}