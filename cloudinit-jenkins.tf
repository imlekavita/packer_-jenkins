
provider "cloudinit"{ }

data "template_file" "jenkins-init" {
template = "${file("script/jenkins-init.cfg")}"
vars{
DEVICE="${var.INSTANCE-DEVICE-NAME}"
JENKINS_VERSION="${var.JENKINS_VERSION}"

   }
}
data "template_cloudinit_config" "cloudinit-jenkins" {

gzip = false
base64_encode = false


part {
content_type = "text/x-shellscript"
content = "${data.template_file.jenkins-init.rendered}"
 
#couldinit.tf
# the security group 
vpc_security_group_ids = ["mention here created in aws vpc_security_group_id"]

#public SSH key
key_name = "{aws key pair.mykeypair.key_name}"

#user data
user_data = "${data template_couldinit_config.couldinit-jenkins.rendered}"

}

resources"aws_ebs_volume" "jenkins-data{
avalability_zone = "region what you use"
size = " "
type = "gp2"
tags{
Name = "jenkins-data"

}
}

resources"aws_ebs_volume" "jenkins_data_attachment" {
device_name  = "${ var.instance_device_name}"
volume_id = "${aws_ebs_volume id}"
instance_id = "${aws_instance.id} 
}


resources"aws_instance" "app-instance" {
count = "${var.APP_INSTANCE_COUNT}"
ami = "${var.APP_INSTANCE_AMI} 
}


