# Create Elastic IPs for NAT Gateway
module "eip" {
  source  = "cloudposse/eip/aws"
  version = "0.2.0"

  name  = "nat-eip"
  count = 1
}
module "this" {
  source  = "cloudposse/label/null"
  version = "0.25.0"

  namespace = var.namespace
  stage     = var.stage
  name      = var.name
}

module "vpc" {
  source  = "cloudposse/vpc/aws"
  version = "2.2.0"

  ipv4_primary_cidr_block = var.vpc_cidr_block

  assign_generated_ipv6_cidr_block = true
  default_security_group_deny_all  = true
  default_route_table_no_routes    = true
  default_network_acl_deny_all     = true
  context                          = module.this.context
}


module "subnets" {
  source  = "cloudposse/dynamic-subnets/aws"
  version = "2.4.2"

  availability_zones = var.availability_zones
  vpc_id             = module.vpc.vpc_id
  igw_id             = [module.vpc.igw_id]
  ipv4_cidr_block    = [module.vpc.vpc_cidr_block]

  nat_gateway_enabled  = true
  nat_instance_enabled = false
  nat_elastic_ips      = [module.eip[0].id]

  context = module.this.context
}

module "eks" {
  source  = "cloudposse/eks-cluster/aws"
  version = "2.2.0"

  region             = var.region
  vpc_id             = module.vpc.vpc_id
  subnet_ids         = module.subnets.private_subnet_ids
  name               = var.eks_cluster_name
  kubernetes_version = "1.31"

  enabled_cluster_log_types = ["api"]

  context = module.this.context
}

module "eks_node_group" {
  source  = "cloudposse/eks-node-group/aws"
  version = "3.3.0"

  subnet_ids        = module.subnets.private_subnet_ids
  cluster_name      = module.eks_cluster.eks_cluster_id
  instance_types    = var.instance_types
  desired_size      = var.desired_size
  min_size          = var.min_size
  max_size          = var.max_size
  kubernetes_labels = var.kubernetes_labels

  module_depends_on = module.eks_cluster.kubernetes_config_map_id

  context = module.this.context
}
