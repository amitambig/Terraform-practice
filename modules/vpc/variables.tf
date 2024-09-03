variable "vpc_cidr" {
  
}
variable "subnets_cidr" {
  type = list(string)
}
variable "subnets_name" {
  default = ["Subenet1","Subnet2"]
}