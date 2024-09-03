module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  subnets_cidr = var.subnets_cidr
}

module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}
module "ec2" {
  source = "./modules/ec2"
  sg_id = module.sg.sg_id
  subnet_id = module.vpc.subnets_id
}