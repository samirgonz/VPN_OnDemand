variable "availability_zone_names" {
  type    = string
}

variable "vpn_subnet_az" {
  description = "Availability zone for VPN Subnet"
  type = string  
}

variable "vpn_instance_type" {
  description = "Instance Type"
  type = string  
}

variable "vpn_vpc_block" {
  description = "Instance Type"
  type = string 
}

variable "vpn_subnet_cidr" {
  description = "Instance Type"
  type = string  
}