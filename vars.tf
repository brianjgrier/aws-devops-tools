variable "CIDR_Required" {}
variable "num_Public_Subnets" {}
variable "num_Private_Subnets" {}
variable "num_Bastion_Subnets" {}
variable "Name_Tag" {}
variable "Keypair" {}
variable "AWS_Profile" {}
variable "GP_Keypair" {}
variable "GP_kms_key" {}
variable "GP_lambda_cidr" {}
variable "GP_route_53_cidr" {}
variable "GP_alarm_actions" {}

variable "AMIs" {
  type = map
  default = {
    us-east-1      = "ami-0bda37e733757a5aa"
    us-east-2      = "ami-0c6665f65c5018138"
    us-west-1      = "ami-055f65bb0ae8b7a6c"
    us-west-2      = "ami-07c4f6ef17b9b7750"
  }
}

variable "NAT_GW_EIPs" {
  type = map
  default = {
    us-east-1 = [ "eipalloc-0cf6a847cf265f6df", "eipalloc-0cc291083496ad802"]
    us-east-2 = [ "eipalloc-06d51fcfca3171129", "eipalloc-0ab1258d9b7f6af3c"]
    us-west-2 = [ "eipalloc-", "eipalloc-"]
  }
}

variable "CircleCI_EIPs" {
  type = map
  default = {
    us-east-1 = "eipalloc-0d915f407b01a6c6d"
    us-east-2 = "eipalloc-0456648b3ee3db89d"
    us-west-2 = "eipalloc-02f12a41240aac5bb"
  }
}

variable "GITPrime_EIPs" {
  type = map
  default = {
    us-east-1 = "eipalloc-043d64c490550e907"
    us-east-2 = "eipalloc-033969a4ee89d19f5"
    us-west-2 = "eipalloc-0b20e38e26b738e66"
  }
}

variable "Corporate_IPs" {
  type = list
  default = [ "64.100.0.0/14", "72.163.0.0/16", "128.107.0.0/16", "144.254.0.0/16", "173.36.0.0/14" ] 
}

variable "GHE_CIDR" {
  type = string
}

variable "Route53_CIDR" {
  type = list
  default = [ "15.177.0.0/18"]
}
