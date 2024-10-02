variable "vpc_cidr" {
  #   default = "10.0.0.0/16"
}
variable "enable_dns_hostnames" {
  default = true
}
variable "common_tags" {
  default = {}
}
variable "project_name" {
  type = string
}
variable "environment" {
  type = string
}
variable "vpc_tags" {
  default = {}
}
variable "igw_tags" {
  default = {}
}
variable "public_subnet_tags" {
  default = {}
}
variable "private_subnet_tags" {
  default = {}
}
variable "database_subnet_tags" {
  default = {}
}
variable "public_subnets_cidrs" {
  type = list(any)
  validation {
    condition     = (length(var.public_subnets_cidrs) == 2)
    error_message = "Please provide valide 2 cidrs for public subnet"
  }
}
variable "private_subnets_cidrs" {
  type = list(any)
  validation {
    condition     = (length(var.private_subnets_cidrs) == 2)
    error_message = "Please provide valide 2 cidrs for private subnet"
  }
}
variable "database_subnets_cidrs" {
  type = list(any)
  validation {
    condition     = (length(var.database_subnets_cidrs) == 2)
    error_message = "Please provide valide 2 cidrs for database subnet"
  }
}
variable "db_subnet_group_tags" {
  default = {}
}
variable "aws_nat_gateway_tags" {
  default = {}
}
variable "public_route_table_tags" {
  default = {}
}
variable "private_route_table_tags" {
  default = {}
}
variable "database_route_table_tags" {
  default = {}
}
variable "is_peering_required" {
  type    = bool
  default = false
}
variable "vpc_peering_tags" {
  default = {}
}
