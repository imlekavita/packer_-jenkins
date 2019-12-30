variable "AWS_REGION" {
type  = string 
default ="eu-west-1"

}
variable "PATH-TO-PRIVATE-KEY"{

default ="mykey"

}
variable "PATH-TO-PUBLIC-KEY"{

default ="mykey.pub"

}

variable "AMIS" {
type ="map"
default = {
us-west-1 = "ami-imageid"
us-west-2 = "ami-imageid"
eu-west-1 = "ami-imageid"
}
}
variable "INSTANCE_DEVICE_NAME"{
default = "/dev/xvdh"
(xen virtual block device.
 Basically its mount point,where you can mount drive or any other device
when we hit 'mount' command we can see all these options,
 for example:xvd* - xvda,xvdb,xvdc and so on) 	
}
variable "JENKINS_VERSION"{
default = "2.19.1"
}
variable "INSTANCE_COUNT"{
default = "0"
}
