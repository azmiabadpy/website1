provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAVVZOOCIZFXVLOUIZ"
    secret_key = ""

}

resource "aws_instance" "k8s_slave2" {
    ami="ami-0ad21ae1d0696ad58"
    instance_type = "t2.medium"
    key_name = "azmi1"
    tags = {
      Name=" k8s-slave2"
    }

  
}

resource "aws_instance" "k8s_salve1" {
    ami="ami-0ad21ae1d0696ad58"
    instance_type = "t2.medium"
    key_name = "azmi1"
    tags = {
      Name=" k8s-slave1"
    }

  
}

resource "aws_instance" "k8s_master" {
    ami="ami-0ad21ae1d0696ad58"
    instance_type = "t2.medium"
    key_name = "azmi1"
    tags = {
      Name=" k8s-master"
    }

  
}
