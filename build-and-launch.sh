#/!/bin/bash
AMI_ID = 'packer build -machine-readable packer.json | aws -f, 's0 ~/artifact,0,id/{print s6}'
echo 'variable "AMIT_ID" { default = "'${AMI_ID}'"}' >amivar.tf
terraform apply